using System;
using System.Threading;

internal class MyDialog
{
    private static readonly string LABEL_8 = SimpleLocale._localeDictionary["LABEL_8"];
    private static readonly string DIALOG_156 = SimpleLocale._localeDictionary["DIALOG_156"];

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
            builder.SetTitle("###<color=yellow>超級機</color>###");
            builder.AddSubView(MenuIcon.Create(MenuIcon.IconType.LUCKYDRAW_DISNEY, null).gameObject);
            builder.SetMessage(message);
            builder.AddButton(Locale.t("LABEL_OK"), onConfirm);

            if (onCancel != null)
                builder.AddButton(Locale.t("LABEL_CANCEL"), onCancel);

            builder.Show();
        });
    }

    public static void SetNetworkWaitingText(String title, String format, params object[] args)
    {
        string message = format;
        if (args.Length > 0)
            message = String.Format(format, args);

        if (title != null)
            SimpleLocale._localeDictionary["LABEL_8"] = title;

        SimpleLocale._localeDictionary["DIALOG_156"] = message;
    }

    public static void RestoreNetworkWaitingText()
    {
        SimpleLocale._localeDictionary["LABEL_8"] = LABEL_8;
        SimpleLocale._localeDictionary["DIALOG_156"] = DIALOG_156;
    }
}