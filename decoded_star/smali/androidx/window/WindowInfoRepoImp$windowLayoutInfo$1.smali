.class final Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WindowInfoRepoImp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/WindowInfoRepoImp;->getWindowLayoutInfo()Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Landroidx/window/WindowLayoutInfo;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u0010\u0012\u000c\u0012\n \u0004*\u0004\u0018\u00010\u00030\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Landroidx/window/WindowLayoutInfo;",
        "kotlin.jvm.PlatformType"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.window.WindowInfoRepoImp$windowLayoutInfo$1"
    f = "WindowInfoRepoImp.kt"
    i = {}
    l = {
        0x69
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/window/WindowInfoRepoImp;


# direct methods
.method constructor <init>(Landroidx/window/WindowInfoRepoImp;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/WindowInfoRepoImp;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;->this$0:Landroidx/window/WindowInfoRepoImp;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;

    iget-object v1, p0, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;->this$0:Landroidx/window/WindowInfoRepoImp;

    invoke-direct {v0, v1, p2}, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;-><init>(Landroidx/window/WindowInfoRepoImp;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Landroidx/window/WindowLayoutInfo;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 102
    iget v1, p0, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 106
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :pswitch_0
    move-object v0, p0

    .local v0, "this":Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    .line 103
    .local v2, "$this$callbackFlow":Lkotlinx/coroutines/channels/ProducerScope;
    new-instance v3, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$callback$1;

    invoke-direct {v3, v2}, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$callback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    check-cast v3, Landroidx/core/util/Consumer;

    .line 104
    .local v3, "callback":Landroidx/core/util/Consumer;
    iget-object v4, v1, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;->this$0:Landroidx/window/WindowInfoRepoImp;

    invoke-static {v4}, Landroidx/window/WindowInfoRepoImp;->access$getWindowBackend$p(Landroidx/window/WindowInfoRepoImp;)Landroidx/window/WindowBackend;

    move-result-object v4

    iget-object v5, v1, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;->this$0:Landroidx/window/WindowInfoRepoImp;

    invoke-static {v5}, Landroidx/window/WindowInfoRepoImp;->access$getActivity$p(Landroidx/window/WindowInfoRepoImp;)Landroid/app/Activity;

    move-result-object v5

    sget-object v6, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$1;->INSTANCE:Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$1;

    check-cast v6, Ljava/util/concurrent/Executor;

    invoke-interface {v4, v5, v6, v3}, Landroidx/window/WindowBackend;->registerLayoutChangeCallback(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 105
    new-instance v4, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$2;

    iget-object v5, v1, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;->this$0:Landroidx/window/WindowInfoRepoImp;

    invoke-direct {v4, v5, v3}, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1$2;-><init>(Landroidx/window/WindowInfoRepoImp;Landroidx/core/util/Consumer;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x1

    iput v6, v1, Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;->label:I

    invoke-static {v2, v4, v5}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$callbackFlow":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v3    # "callback":Landroidx/core/util/Consumer;
    if-ne v2, v0, :cond_0

    .line 102
    return-object v0

    .line 105
    :cond_0
    move-object v0, v1

    .line 106
    .end local v1    # "this":Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;
    .restart local v0    # "this":Landroidx/window/WindowInfoRepoImp$windowLayoutInfo$1;
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
