.class Lcom/termux/app/RunCommandService$LocalBinder;
.super Landroid/os/Binder;
.source "RunCommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/RunCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalBinder"
.end annotation


# instance fields
.field public final service:Lcom/termux/app/RunCommandService;

.field final synthetic this$0:Lcom/termux/app/RunCommandService;


# direct methods
.method constructor <init>(Lcom/termux/app/RunCommandService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/RunCommandService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/termux/app/RunCommandService$LocalBinder;->this$0:Lcom/termux/app/RunCommandService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/termux/app/RunCommandService$LocalBinder;->service:Lcom/termux/app/RunCommandService;

    return-void
.end method
