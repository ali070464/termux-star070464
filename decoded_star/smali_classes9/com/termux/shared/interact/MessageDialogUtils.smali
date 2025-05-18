.class public Lcom/termux/shared/interact/MessageDialogUtils;
.super Ljava/lang/Object;
.source "MessageDialogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitAppWithErrorMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "messageText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "titleText",
            "messageText"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/termux/shared/interact/-$$Lambda$MessageDialogUtils$2bImDdr3yhP2vBBXa5gsgU3PRf0;->INSTANCE:Lcom/termux/shared/interact/-$$Lambda$MessageDialogUtils$2bImDdr3yhP2vBBXa5gsgU3PRf0;

    invoke-static {p0, p1, p2, v0}, Lcom/termux/shared/interact/MessageDialogUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 82
    return-void
.end method

.method static synthetic lambda$exitAppWithErrorMessage$0(Landroid/content/DialogInterface;)V
    .locals 1
    .param p0, "dialog"    # Landroid/content/DialogInterface;

    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "messageText"    # Ljava/lang/String;
    .param p3, "onDismiss"    # Landroid/content/DialogInterface$OnDismissListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "titleText",
            "messageText",
            "onDismiss"
        }
    .end annotation

    .line 25
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/termux/shared/interact/MessageDialogUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 26
    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "messageText"    # Ljava/lang/String;
    .param p3, "positiveText"    # Ljava/lang/String;
    .param p4, "onPositiveButton"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negativeText"    # Ljava/lang/String;
    .param p6, "onNegativeButton"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "onDismiss"    # Landroid/content/DialogInterface$OnDismissListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x10,
            0x0,
            0x10,
            0x10
        }
        names = {
            "context",
            "titleText",
            "messageText",
            "positiveText",
            "onPositiveButton",
            "negativeText",
            "onNegativeButton",
            "onDismiss"
        }
    .end annotation

    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/termux/shared/R$style;->Theme_AppCompat_Light_Dialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 53
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 54
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/termux/shared/R$layout;->dialog_show_message:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 55
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 58
    sget v3, Lcom/termux/shared/R$id;->dialog_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 59
    .local v3, "titleView":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    sget v4, Lcom/termux/shared/R$id;->dialog_message:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 63
    .local v4, "messageView":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 64
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .end local v3    # "titleView":Landroid/widget/TextView;
    .end local v4    # "messageView":Landroid/widget/TextView;
    :cond_1
    if-nez p3, :cond_2

    .line 68
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 69
    :cond_2
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    if-eqz p5, :cond_3

    .line 72
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    :cond_3
    if-eqz p7, :cond_4

    .line 75
    invoke-virtual {v0, p7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 78
    return-void
.end method
