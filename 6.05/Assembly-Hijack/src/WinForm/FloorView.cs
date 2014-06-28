using JsonFx.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using WinForm.GameJSON;

namespace WinForm
{
    public partial class FloorView : Form
    {
        public FloorView()
        {
            InitializeComponent();
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);

            //ReadJson("user_register.json");
            ReadJson("user_login.json");
        }

        private void ReadJson(string fileName)
        {
            Login login;
            using (var reader = new StreamReader(fileName))
            {
                login = JsonReader.Deserialize<Login>(reader.ReadToEnd());
            }

            var stageList = login.data.stageList.Select(s => ObjectParser.ParseStage(s));
            var floorList = login.data.floorList.Select(s => ObjectParser.ParseFloor(s));
            var storyList = login.data.storyList.Select(s => ObjectParser.ParseStory(s));

            foreach (var stage in stageList)
            {
                stage.floors = floorList.Where(o => o.stageId == stage.stageId).ToArray();
            }

            var result = stageList
                .GroupBy(
                    stage => stage.typeEnum,
                    stage => new
                    {
                        Stage = stage,
                        Story = storyList.FirstOrDefault(story => stage.storyId == story.storyId),
                        Floors = floorList.Where(floor => floor.stageId == stage.stageId).OrderBy(floor => floor.floorId)
                    })
                .OrderBy(x => x.Key);

            foreach (var typeItem in result)
            {
                TreeNode stageTypeNode = floorTree.Nodes.Add(String.Format("[{0}]{1} ({2})", (int)typeItem.Key, typeItem.Key, typeItem.Count()));
                stageTypeNode.Tag = typeItem;
                foreach (var stageItem in typeItem)
                {
                    string title;
                    var stage = stageItem.Stage;
                    if (stageItem.Story != null)
                        title = String.Format("{4}[{0}]{1} ({2}) - {3}", stage.stageId, stage.title, stageItem.Floors.Count(), stageItem.Story.name, stage.zone);
                    else
                        title = String.Format("{3}[{0}]{1} ({2})", stage.stageId, stage.title, stageItem.Floors.Count(), stage.zone);

                    TreeNode stageNode = stageTypeNode.Nodes.Add(title);
                    stageNode.Tag = stage;
                    foreach (var floor in stageItem.Floors)
                    {
                        TreeNode floorNode = stageNode.Nodes.Add(String.Format("[{0}]{1}", floor.floorId, floor.title));
                        floorNode.Tag = floor;
                    }
                }
            }
        }

        private void floorTree_NodeMouseClick(object sender, TreeNodeMouseClickEventArgs e)
        {
            DisplayProperties(e.Node.Tag);
        }

        private void DisplayProperties(object target)
        {
            fieldList.Items.Clear();

            foreach (var fieldInfo in target.GetType().GetFields())
            {
                var item = new ListViewItem(fieldInfo.Name);
                var value = fieldInfo.GetValue(target);

                if (value != null)
                    item.SubItems.Add(value.ToString());

                fieldList.Items.Add(item);
            }
        }

        private void floorTree_Click(object sender, EventArgs e)
        {
            var node = floorTree.SelectedNode;
            if (node != null)
            {
                DisplayProperties(node.Tag);
            }
        }
    }
}