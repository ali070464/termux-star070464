.class public final synthetic Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$G6j1p72Eq_Pfjbe8JRA5hkjLqGM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$G6j1p72Eq_Pfjbe8JRA5hkjLqGM;->f$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    return-void
.end method


# virtual methods
.method public final onTextSet(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$G6j1p72Eq_Pfjbe8JRA5hkjLqGM;->f$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    invoke-virtual {v0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->lambda$promptNameAndSave$4$TermuxFileReceiverActivity(Ljava/lang/String;)V

    return-void
.end method
