.class final Lcom/google/common/collect/Streams$5;
.super Ljava/util/Spliterators$AbstractSpliterator;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Streams;->mapWithIndex(Ljava/util/stream/DoubleStream;Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Spliterators$AbstractSpliterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field index:J

.field final synthetic val$fromIterator:Ljava/util/PrimitiveIterator$OfDouble;

.field final synthetic val$function:Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;


# direct methods
.method constructor <init>(JILjava/util/PrimitiveIterator$OfDouble;Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # I

    .line 598
    iput-object p4, p0, Lcom/google/common/collect/Streams$5;->val$fromIterator:Ljava/util/PrimitiveIterator$OfDouble;

    iput-object p5, p0, Lcom/google/common/collect/Streams$5;->val$function:Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    .line 599
    const-wide/16 p4, 0x0

    iput-wide p4, p0, Lcom/google/common/collect/Streams$5;->index:J

    return-void
.end method


# virtual methods
.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TR;>;)Z"
        }
    .end annotation

    .line 603
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TR;>;"
    iget-object v0, p0, Lcom/google/common/collect/Streams$5;->val$fromIterator:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {v0}, Ljava/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/google/common/collect/Streams$5;->val$function:Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;

    iget-object v1, p0, Lcom/google/common/collect/Streams$5;->val$fromIterator:Ljava/util/PrimitiveIterator$OfDouble;

    invoke-interface {v1}, Ljava/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/common/collect/Streams$5;->index:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/common/collect/Streams$5;->index:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;->apply(DJ)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 605
    const/4 v0, 0x1

    return v0

    .line 607
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
