.class final Lkotlinx/coroutines/JobSupport$children$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "JobSupport.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/JobSupport;->getChildren()Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Lkotlinx/coroutines/ChildJob;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1478:1\n641#2,6:1479\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n*L\n954#1:1479,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "Lkotlinx/coroutines/ChildJob;"
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
    c = "kotlinx.coroutines.JobSupport$children$1"
    f = "JobSupport.kt"
    i = {
        0x1,
        0x1
    }
    l = {
        0x3b8,
        0x3ba
    }
    m = "invokeSuspend"
    n = {
        "this_$iv",
        "cur$iv"
    }
    s = {
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lkotlinx/coroutines/JobSupport;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/JobSupport;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/JobSupport$children$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$children$1;->this$0:Lkotlinx/coroutines/JobSupport;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lkotlinx/coroutines/JobSupport$children$1;

    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$children$1;->this$0:Lkotlinx/coroutines/JobSupport;

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/JobSupport$children$1;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/JobSupport$children$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Lkotlinx/coroutines/ChildJob;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/JobSupport$children$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/JobSupport$children$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport$children$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 950
    iget v1, p0, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 957
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 950
    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lkotlinx/coroutines/JobSupport$children$1;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "$i$a$-forEach-JobSupport$children$1$1$1":I
    move-object v5, v2

    .local v5, "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    move v6, v3

    .local v3, "$i$f$forEach":I
    .local v6, "$i$a$-let-JobSupport$children$1$1":I
    move-object v7, v2

    .local v7, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v8, v1, Lkotlinx/coroutines/JobSupport$children$1;->L$2:Ljava/lang/Object;

    move-object v5, v8

    check-cast v5, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    iget-object v8, v1, Lkotlinx/coroutines/JobSupport$children$1;->L$1:Ljava/lang/Object;

    move-object v7, v8

    check-cast v7, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    iget-object v8, v1, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v8

    move-object v8, v7

    move v7, v3

    move-object v3, v2

    goto/16 :goto_2

    .end local v1    # "this":Lkotlinx/coroutines/JobSupport$children$1;
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "$i$a$-forEach-JobSupport$children$1$1$1":I
    .end local v5    # "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v6    # "$i$a$-let-JobSupport$children$1$1":I
    .end local v7    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v0, p0

    .local v0, "this":Lkotlinx/coroutines/JobSupport$children$1;
    move-object v1, v2

    .local v1, "$this$sequence":Lkotlin/sequences/SequenceScope;
    .local v2, "state":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lkotlinx/coroutines/JobSupport$children$1;
    .end local v1    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .end local v2    # "state":Ljava/lang/Object;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lkotlinx/coroutines/JobSupport$children$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/sequences/SequenceScope;

    .line 951
    .local v2, "$this$sequence":Lkotlin/sequences/SequenceScope;
    iget-object v3, v1, Lkotlinx/coroutines/JobSupport$children$1;->this$0:Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v3}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v3

    .line 952
    .local v3, "state":Ljava/lang/Object;
    instance-of v4, v3, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/ChildHandleNode;

    iget-object v4, v4, Lkotlinx/coroutines/ChildHandleNode;->childJob:Lkotlinx/coroutines/ChildJob;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x1

    iput v6, v1, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    invoke-virtual {v2, v4, v5}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 950
    return-object v0

    .line 952
    :cond_0
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    .end local v3    # "state":Ljava/lang/Object;
    .restart local v0    # "this":Lkotlinx/coroutines/JobSupport$children$1;
    .local v1, "$this$sequence":Lkotlin/sequences/SequenceScope;
    .local v2, "state":Ljava/lang/Object;
    :goto_0
    move-object v1, v0

    goto :goto_3

    .line 953
    .end local v0    # "this":Lkotlinx/coroutines/JobSupport$children$1;
    .local v1, "this":Lkotlinx/coroutines/JobSupport$children$1;
    .local v2, "$this$sequence":Lkotlin/sequences/SequenceScope;
    .restart local v3    # "state":Ljava/lang/Object;
    :cond_1
    instance-of v4, v3, Lkotlinx/coroutines/Incomplete;

    if-eqz v4, :cond_6

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v4}, Lkotlinx/coroutines/Incomplete;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_3

    .local v4, "list":Lkotlinx/coroutines/NodeList;
    :cond_2
    const/4 v5, 0x0

    .line 954
    .local v5, "$i$a$-let-JobSupport$children$1$1":I
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .local v6, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    const/4 v7, 0x0

    .line 1479
    .local v7, "$i$f$forEach":I
    invoke-virtual {v6}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-object v13, v8

    move-object v8, v2

    move-object v2, v4

    move-object v4, v6

    move v6, v5

    move-object v5, v13

    .line 1480
    .local v2, "list":Lkotlinx/coroutines/NodeList;
    .local v4, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .local v5, "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .local v6, "$i$a$-let-JobSupport$children$1$1":I
    .local v8, "$this$sequence":Lkotlin/sequences/SequenceScope;
    :goto_1
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1481
    instance-of v9, v5, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v9, :cond_4

    move-object v9, v5

    check-cast v9, Lkotlinx/coroutines/ChildHandleNode;

    .local v9, "it":Lkotlinx/coroutines/ChildHandleNode;
    const/4 v10, 0x0

    .line 954
    .local v10, "$i$a$-forEach-JobSupport$children$1$1$1":I
    iget-object v11, v9, Lkotlinx/coroutines/ChildHandleNode;->childJob:Lkotlinx/coroutines/ChildJob;

    iput-object v8, v1, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lkotlinx/coroutines/JobSupport$children$1;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/JobSupport$children$1;->L$2:Ljava/lang/Object;

    const/4 v12, 0x2

    iput v12, v1, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    invoke-virtual {v8, v11, v1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    .end local v2    # "list":Lkotlinx/coroutines/NodeList;
    .end local v3    # "state":Ljava/lang/Object;
    .end local v8    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .end local v9    # "it":Lkotlinx/coroutines/ChildHandleNode;
    if-ne v9, v0, :cond_3

    .line 950
    return-object v0

    .line 954
    :cond_3
    move-object v9, v8

    move-object v8, v4

    move v4, v10

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    .end local v10    # "$i$a$-forEach-JobSupport$children$1$1$1":I
    .local v4, "$i$a$-forEach-JobSupport$children$1$1$1":I
    .local v8, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    :goto_2
    move-object v4, v8

    move-object v8, v9

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    .line 1482
    .end local v8    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .local v4, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    :cond_4
    invoke-virtual {v5}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v5

    .restart local v2    # "list":Lkotlinx/coroutines/NodeList;
    .restart local v3    # "state":Ljava/lang/Object;
    .local v8, "$this$sequence":Lkotlin/sequences/SequenceScope;
    goto :goto_1

    .line 1484
    .end local v2    # "list":Lkotlinx/coroutines/NodeList;
    .end local v3    # "state":Ljava/lang/Object;
    .end local v8    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    :cond_5
    nop

    .line 955
    .end local v4    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .end local v5    # "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v7    # "$i$f$forEach":I
    nop

    .line 957
    .end local v6    # "$i$a$-let-JobSupport$children$1$1":I
    :cond_6
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
