.class public final synthetic Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$l0FJjfbug9g8f5I2eFThzIJs1HY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

.field public final synthetic f$1:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$l0FJjfbug9g8f5I2eFThzIJs1HY;->f$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    iput-object p2, p0, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$l0FJjfbug9g8f5I2eFThzIJs1HY;->f$1:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final onTextSet(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$l0FJjfbug9g8f5I2eFThzIJs1HY;->f$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    iget-object v1, p0, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$l0FJjfbug9g8f5I2eFThzIJs1HY;->f$1:Ljava/io/InputStream;

    invoke-virtual {v0, v1, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->lambda$promptNameAndSave$2$TermuxFileReceiverActivity(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method
