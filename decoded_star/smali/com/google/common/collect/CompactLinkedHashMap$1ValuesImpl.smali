.class Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;
.super Lcom/google/common/collect/CompactHashMap$ValuesView;
.source "CompactLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/CompactLinkedHashMap;->createValues()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValuesImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/CompactHashMap<",
        "TK;TV;>.ValuesView;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CompactLinkedHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CompactLinkedHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/CompactLinkedHashMap;

    .line 254
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;, "Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;"
    iput-object p1, p0, Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;->this$0:Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap$ValuesView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 272
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;, "Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;->this$0:Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-static {v0}, Lcom/google/common/collect/CompactLinkedHashMap;->access$000(Lcom/google/common/collect/CompactLinkedHashMap;)I

    move-result v0

    .local v0, "i":I
    :goto_0
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;->this$0:Lcom/google/common/collect/CompactLinkedHashMap;

    iget-object v1, v1, Lcom/google/common/collect/CompactLinkedHashMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 273
    iget-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;->this$0:Lcom/google/common/collect/CompactLinkedHashMap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v0

    goto :goto_0

    .line 276
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 267
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;, "Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;"
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 257
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;, "Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;"
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 262
    .local p0, "this":Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;, "Lcom/google/common/collect/CompactLinkedHashMap$1ValuesImpl;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
