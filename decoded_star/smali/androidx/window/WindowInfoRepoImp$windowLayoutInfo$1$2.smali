.class final Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WindowInfoRepoImp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/WindowLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/window/WindowInfoRepoImp;


# direct methods
.method constructor <init>(Landroidx/window/WindowInfoRepoImp;Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/WindowInfoRepoImp;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$2;->this$0:Landroidx/window/WindowInfoRepoImp;

    iput-object p2, p0, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$2;->$callback:Landroidx/core/util/Consumer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 105
    invoke-virtual {p0}, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 105
    iget-object v0, p0, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$2;->this$0:Landroidx/window/WindowInfoRepoImp;

    invoke-static {v0}, Landroidx/window/WindowInfoRepoImp;->access$getWindowBackend$p(Landroidx/window/WindowInfoRepoImp;)Landroidx/window/WindowBackend;

    move-result-object v0

    iget-object v1, p0, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$2;->$callback:Landroidx/core/util/Consumer;

    invoke-interface {v0, v1}, Landroidx/window/WindowBackend;->unregisterLayoutChangeCallback(Landroidx/core/util/Consumer;)V

    return-void
.end method
