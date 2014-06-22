using System;
using System.Threading;

internal class MyDialog
{
    public static void Confirm(String message, Action onConfirm = null, Action onCancel = null)
    {
        if (onConfirm == null)
        {
            onConfirm = delegate
            {
                ViewController.SwitchView(ViewIndex.WORLDMAP_WORLD_MAP);
            };
        }

        ViewController.SwitchView(delegate
        {
            DialogBuilder builder = new DialogBuilder();
            builder.SetTitle("###[超級機]###");
            builder.AddSubView(MenuIcon.Create(MenuIcon.IconType.LUCKYDRAW_DISNEY, null).gameObject);
            builder.SetMessage(message);
            builder.AddButton(Locale.t("LABEL_OK"), onConfirm);

            if (onCancel != null)
                builder.AddButton(Locale.t("LABEL_CANCEL"), onCancel);

            builder.Show();
        });
    }
}