namespace WinForm
{
    partial class FloorView
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.floorTree = new System.Windows.Forms.TreeView();
            this.fieldList = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.SuspendLayout();
            // 
            // floorTree
            // 
            this.floorTree.Dock = System.Windows.Forms.DockStyle.Left;
            this.floorTree.Location = new System.Drawing.Point(0, 0);
            this.floorTree.Name = "floorTree";
            this.floorTree.Size = new System.Drawing.Size(377, 733);
            this.floorTree.TabIndex = 0;
            this.floorTree.NodeMouseClick += new System.Windows.Forms.TreeNodeMouseClickEventHandler(this.floorTree_NodeMouseClick);
            this.floorTree.Click += new System.EventHandler(this.floorTree_Click);
            // 
            // fieldList
            // 
            this.fieldList.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2});
            this.fieldList.Dock = System.Windows.Forms.DockStyle.Fill;
            this.fieldList.Location = new System.Drawing.Point(377, 0);
            this.fieldList.Name = "fieldList";
            this.fieldList.Size = new System.Drawing.Size(653, 733);
            this.fieldList.TabIndex = 1;
            this.fieldList.UseCompatibleStateImageBehavior = false;
            this.fieldList.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Property Name";
            this.columnHeader1.Width = 166;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Value";
            this.columnHeader2.Width = 182;
            // 
            // FloorView
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1030, 733);
            this.Controls.Add(this.fieldList);
            this.Controls.Add(this.floorTree);
            this.Name = "FloorView";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Floor View";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TreeView floorTree;
        private System.Windows.Forms.ListView fieldList;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
    }
}

