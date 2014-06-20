using System;

internal class MyDialog
{
    public static void ShowConfirm(String message, Action onConfirm = null)
    {
        //ViewController.SwitchView(() =>
        //    {
        //        DialogBuilder builder = Create(message);
        //        builder.AddButton(Locale.t("LABEL_OK"),
        //            () =>
        //            {
        //                if (onConfirm != null)
        //                    onConfirm();
        //            });

        //        builder.Show();
        //    });

        if (onConfirm == null)
        {
            onConfirm = delegate
            {
                ViewController.SwitchView(ViewIndex.WORLDMAP_WORLD_MAP);
            };
        }

        ViewController.SwitchView(() =>
        {
            DialogBuilder dialogBuilder = new DialogBuilder();
            dialogBuilder.SetTitle("###[超級機]###");
            dialogBuilder.AddSubView(MenuIcon.Create(MenuIcon.IconType.LUCKYDRAW_DISNEY, null).gameObject);
            dialogBuilder.SetScrollText(message);
            dialogBuilder.AddButton(Locale.t("LABEL_OK"), onConfirm);
            dialogBuilder.Show();
        });
    }

    public static void ShowConfirmCancel(String message, Action onConfirm, Action onCancel = null)
    {
        DialogBuilder builder = Create(message);
        builder.AddButton(Locale.t("LABEL_OK"),
            () =>
            {
                if (onConfirm != null)
                    onConfirm();
            });
        builder.AddButton(Locale.t("LABEL_CANCEL"),
            () =>
            {
                if (onCancel != null)
                    onCancel();
            });

        Show(builder);
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
        builder.Show();
    }

    public static void ShowLuckyDrawMessage(Action onComplete)
    {
        ViewController.SwitchView(delegate
        {
            if (Game.runtimeData.luckyDrawMessage != null)
            {
                DialogBuilder dialogBuilder = new DialogBuilder();
                dialogBuilder.SetTitle(Locale.t("DIALOG_147"));
                dialogBuilder.SetScrollText(Game.runtimeData.luckyDrawMessage);
                dialogBuilder.AddButton(Locale.t("LABEL_OK"), onComplete);
                dialogBuilder.Show();
            }
            else
            {
                onComplete.Invoke();
            }
        });
    }
}