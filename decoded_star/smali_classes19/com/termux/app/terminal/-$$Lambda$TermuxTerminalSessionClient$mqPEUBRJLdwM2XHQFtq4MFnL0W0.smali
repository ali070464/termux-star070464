.class public final synthetic Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$mqPEUBRJLdwM2XHQFtq4MFnL0W0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

.field public final synthetic f$1:Lcom/termux/terminal/TerminalSession;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/terminal/TermuxTerminalSessionClient;Lcom/termux/terminal/TerminalSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$mqPEUBRJLdwM2XHQFtq4MFnL0W0;->f$0:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    iput-object p2, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$mqPEUBRJLdwM2XHQFtq4MFnL0W0;->f$1:Lcom/termux/terminal/TerminalSession;

    return-void
.end method


# virtual methods
.method public final onTextSet(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$mqPEUBRJLdwM2XHQFtq4MFnL0W0;->f$0:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    iget-object v1, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$mqPEUBRJLdwM2XHQFtq4MFnL0W0;->f$1:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0, v1, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->lambda$renameSession$0$TermuxTerminalSessionClient(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    return-void
.end method
