using System;

internal class MyDialog
{
    public static PopUpDialog instance;

    public static void ShowWaiting(String format, params object[] args)
    {
        Close();

        DialogBuilder builder = Create(String.Format(format, args));
        builder.AddLoadingImage();

        Show(builder);
    }

    public static void ShowConfirm(String message, Action onConfirm = null)
    {
        Close();

        DialogBuilder builder = Create(message);
        builder.AddButton(Locale.t("LABEL_OK"),
            () =>
            {
                Close();
                if (onConfirm != null)
                    onConfirm();
            });

        Show(builder);
    }

    public static void ShowConfirmCancel(String message, Action onConfirm, Action onCancel = null)
    {
        Close();

        DialogBuilder builder = Create(message);
        builder.AddButton(Locale.t("LABEL_OK"),
            () =>
            {
                Close();
                if (onConfirm != null)
                    onConfirm();
            });
        builder.AddButton(Locale.t("LABEL_CANCEL"),
            () =>
            {
                Close();
                if (onCancel != null)
                    onCancel();
            });

        Show(builder);
    }

    public static void Close()
    {
        if (instance != null)
        {
            instance.canHide = true;
            instance.Hide();
            instance = null;
        }
    }

    private static DialogBuilder Create(string message)
    {
        DialogBuilder builder = new DialogBuilder();
        builder.SetTitle("###[超級機]###");
        builder.AddSubView(MenuIcon.Create(MenuIcon.IconType.LUCKYDRAW_DISNEY, null).gameObject);
        builder.SetMessage(message);

        return builder;
    }

    private static void Show(DialogBuilder builder)
    {
        builder.canHide = false;
        builder.Show();
        instance = PopUpDialog.instance;
    }
}