.class public Lcom/termux/shared/interact/ShareUtils;
.super Ljava/lang/Object;
.source "ShareUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ShareUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "toastString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "text",
            "toastString"
        }
    .end annotation

    .line 78
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    const-class v0, Landroid/content/ClipboardManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 82
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    if-eqz v0, :cond_1

    .line 83
    const/4 v1, 0x0

    const v2, 0x19000

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4, v4}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 84
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    invoke-static {p0, p2, v3}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 87
    :cond_1
    return-void

    .line 78
    .end local v0    # "clipboardManager":Landroid/content/ClipboardManager;
    :cond_2
    :goto_0
    return-void
.end method

.method private static openSystemAppChooser(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "intent",
            "title"
        }
    .end annotation

    .line 38
    if-nez p0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "chooserIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open system chooser for:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/termux/shared/data/IntentUtils;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShareUtils"

    invoke-static {v3, v2, v1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static openURL(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "url"
        }
    .end annotation

    .line 96
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 97
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 98
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    goto :goto_1

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open url \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ShareUtils"

    invoke-static {v4, v3, v2}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 101
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 103
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    sget v3, Lcom/termux/shared/R$string;->title_open_url_with:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/termux/shared/interact/ShareUtils;->openSystemAppChooser(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0

    .line 107
    :goto_1
    return-void

    .line 96
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_2
    return-void
.end method

.method public static saveTextToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "showToast"    # Z
    .param p5, "storagePermissionRequestCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "label",
            "filePath",
            "text",
            "showToast",
            "storagePermissionRequestCode"
        }
    .end annotation

    .line 126
    if-eqz p0, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 129
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/termux/shared/file/FileUtils;->isPathInDirPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "ShareUtils"

    if-nez v0, :cond_1

    .line 130
    const-string v0, "/sdcard"

    invoke-static {p2, v0, v1}, Lcom/termux/shared/file/FileUtils;->isPathInDirPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    nop

    .line 131
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/termux/shared/packages/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 132
    sget v1, Lcom/termux/shared/R$string;->msg_storage_permission_not_granted:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    if-ltz p5, :cond_3

    .line 135
    instance-of v1, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_2

    .line 136
    move-object v1, p0

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1, v0, p5}, Lcom/termux/shared/packages/PermissionUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 137
    :cond_2
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 138
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0, p5}, Lcom/termux/shared/packages/PermissionUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 141
    :cond_3
    :goto_0
    return-void

    .line 144
    :cond_4
    nop

    .line 145
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 144
    const/4 v3, 0x0

    invoke-static {p1, p2, v0, p3, v3}, Lcom/termux/shared/file/FileUtils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    .line 146
    .local v0, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v0, :cond_5

    .line 147
    invoke-virtual {v0}, Lcom/termux/shared/models/errors/Error;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {v0}, Lcom/termux/shared/models/errors/Error;->getMinimalErrorString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    .line 150
    :cond_5
    if-eqz p4, :cond_6

    .line 151
    sget v2, Lcom/termux/shared/R$string;->msg_file_saved_successfully:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v1

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 153
    :cond_6
    :goto_1
    return-void

    .line 126
    .end local v0    # "error":Lcom/termux/shared/models/errors/Error;
    :cond_7
    :goto_2
    return-void
.end method

.method public static shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "subject",
            "text"
        }
    .end annotation

    .line 59
    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "shareTextIntent":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const v1, 0x19000

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p2, v1, v2, v3, v3}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    sget v1, Lcom/termux/shared/R$string;->title_share_with:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/termux/shared/interact/ShareUtils;->openSystemAppChooser(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 67
    return-void

    .line 59
    .end local v0    # "shareTextIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void
.end method
