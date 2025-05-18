.class final Lcom/termux/app/TermuxInstaller;
.super Ljava/lang/Object;
.source "TermuxInstaller.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxInstaller"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;)Lcom/termux/shared/models/errors/Error;
    .locals 1
    .param p0, "x0"    # Ljava/io/File;

    .line 58
    invoke-static {p0}, Lcom/termux/app/TermuxInstaller;->ensureDirectoryExists(Ljava/io/File;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method private static ensureDirectoryExists(Ljava/io/File;)Lcom/termux/shared/models/errors/Error;
    .locals 1
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "directory"
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method public static native getZip()[B
.end method

.method static synthetic lambda$showBootstrapErrorDialog$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 240
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 242
    return-void
.end method

.method static synthetic lambda$showBootstrapErrorDialog$1(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "whenDone"    # Ljava/lang/Runnable;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 244
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 245
    const-string v0, "termux prefix directory"

    const-string v1, "/data/data/com.termux/files/usr"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    .line 246
    invoke-static {p0, p1}, Lcom/termux/app/TermuxInstaller;->setupBootstrapIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

.method static synthetic lambda$showBootstrapErrorDialog$2(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "whenDone"    # Ljava/lang/Runnable;

    .line 238
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10003b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100039

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100038

    new-instance v2, Lcom/termux/app/-$$Lambda$TermuxInstaller$z_sygUroikFTb9EjG0vCu-rkOFQ;

    invoke-direct {v2, p0}, Lcom/termux/app/-$$Lambda$TermuxInstaller$z_sygUroikFTb9EjG0vCu-rkOFQ;-><init>(Landroid/app/Activity;)V

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10003c

    new-instance v2, Lcom/termux/app/-$$Lambda$TermuxInstaller$SYMV-V0v_rBTtIncT_nbSrNSjb0;

    invoke-direct {v2, p0, p1}, Lcom/termux/app/-$$Lambda$TermuxInstaller$SYMV-V0v_rBTtIncT_nbSrNSjb0;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 251
    :goto_0
    return-void
.end method

.method public static loadZipBytes()[B
    .locals 1

    .line 327
    const-string v0, "termux-bootstrap"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/termux/app/TermuxInstaller;->getZip()[B

    move-result-object v0

    return-object v0
.end method

.method private static sendBootstrapCrashReportNotification(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "message"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## Bootstrap Error\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxDebugMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v1, "TermuxInstaller"

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v2}, Lcom/termux/app/utils/CrashUtils;->sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 259
    return-void
.end method

.method static setupBootstrapIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "whenDone"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "activity",
            "whenDone"
        }
    .end annotation

    .line 69
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/termux/shared/file/TermuxFileUtils;->isTermuxFilesDirectoryAccessible(Landroid/content/Context;ZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v1

    .line 70
    .local v1, "filesDirectoryAccessibleError":Lcom/termux/shared/models/errors/Error;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 74
    .local v3, "isFilesDirectoryAccessible":Z
    :goto_0
    invoke-static {p0}, Lcom/termux/shared/packages/PackageUtils;->isCurrentUserThePrimaryUser(Landroid/content/Context;)Z

    move-result v4

    const v5, 0x7f10003b

    const-string v6, "/data/data/com.termux/files/usr"

    const-string v7, "TermuxInstaller"

    if-nez v4, :cond_1

    .line 75
    const v4, 0x7f10003a

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    invoke-virtual {p0, v4, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "bootstrapErrorMessage":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFilesDirectoryAccessible: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v7, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p0, v0}, Lcom/termux/app/TermuxInstaller;->sendBootstrapCrashReportNotification(Landroid/app/Activity;Ljava/lang/String;)V

    .line 79
    nop

    .line 80
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {p0, v2, v0}, Lcom/termux/shared/interact/MessageDialogUtils;->exitAppWithErrorMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void

    .line 85
    .end local v0    # "bootstrapErrorMessage":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/termux/shared/models/errors/Error;->getMinimalErrorString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\nTERMUX_FILES_DIR: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/data/data/com.termux/files"

    invoke-static {v6, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0    # "bootstrapErrorMessage":Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {p0, v0}, Lcom/termux/app/TermuxInstaller;->sendBootstrapCrashReportNotification(Landroid/app/Activity;Ljava/lang/String;)V

    .line 89
    nop

    .line 90
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {p0, v2, v0, v4}, Lcom/termux/shared/interact/MessageDialogUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 92
    return-void

    .line 96
    .end local v0    # "bootstrapErrorMessage":Ljava/lang/String;
    :cond_2
    invoke-static {v6, v0}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 97
    sget-object v5, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PREFIX_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 99
    .local v5, "PREFIX_FILE_LIST":[Ljava/io/File;
    if-eqz v5, :cond_4

    array-length v6, v5

    if-eqz v6, :cond_4

    array-length v6, v5

    if-ne v6, v0, :cond_3

    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v8, "/data/data/com.termux/files/usr/tmp"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 102
    :cond_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 103
    return-void

    .line 100
    :cond_4
    :goto_1
    const-string v6, "The termux prefix directory \"/data/data/com.termux/files/usr\" exists but is empty or only contains the tmp directory."

    invoke-static {v7, v6}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 105
    .end local v5    # "PREFIX_FILE_LIST":[Ljava/io/File;
    :cond_5
    invoke-static {v6, v2}, Lcom/termux/shared/file/FileUtils;->fileExists(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 106
    const-string v5, "The termux prefix directory \"/data/data/com.termux/files/usr\" does not exist but another file exists at its destination."

    invoke-static {v7, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 105
    :cond_6
    :goto_2
    nop

    .line 109
    :goto_3
    const v5, 0x7f10003d

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v0, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 110
    .local v0, "progress":Landroid/app/ProgressDialog;
    new-instance v2, Lcom/termux/app/TermuxInstaller$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/termux/app/TermuxInstaller$1;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V

    .line 227
    invoke-virtual {v2}, Lcom/termux/app/TermuxInstaller$1;->start()V

    .line 228
    return-void
.end method

.method static setupStorageSymlinks(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 262
    const-string v0, "termux-storage"

    .line 264
    .local v0, "LOG_TAG":Ljava/lang/String;
    const-string v1, "termux-storage"

    const-string v2, "Setting up storage symlinks."

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v1, Lcom/termux/app/TermuxInstaller$2;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxInstaller$2;-><init>(Landroid/content/Context;)V

    .line 318
    invoke-virtual {v1}, Lcom/termux/app/TermuxInstaller$2;->start()V

    .line 319
    return-void
.end method

.method public static showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "whenDone"    # Ljava/lang/Runnable;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "whenDone",
            "message"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bootstrap Error:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxInstaller"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {p0, p2}, Lcom/termux/app/TermuxInstaller;->sendBootstrapCrashReportNotification(Landroid/app/Activity;Ljava/lang/String;)V

    .line 236
    new-instance v0, Lcom/termux/app/-$$Lambda$TermuxInstaller$soi1m0BtAWIcG-Um7z34cpthUvA;

    invoke-direct {v0, p0, p1}, Lcom/termux/app/-$$Lambda$TermuxInstaller$soi1m0BtAWIcG-Um7z34cpthUvA;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method
