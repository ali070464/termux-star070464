.class Lcom/google/common/collect/TreeTraverser$3;
.super Lcom/google/common/collect/FluentIterable;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeTraverser;->postOrderTraversal(Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TreeTraverser;

.field final synthetic val$root:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/TreeTraverser;

    .line 181
    .local p0, "this":Lcom/google/common/collect/TreeTraverser$3;, "Lcom/google/common/collect/TreeTraverser$3;"
    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$3;->this$0:Lcom/google/common/collect/TreeTraverser;

    iput-object p2, p0, Lcom/google/common/collect/TreeTraverser$3;->val$root:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/google/common/collect/TreeTraverser$3;, "Lcom/google/common/collect/TreeTraverser$3;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Lcom/google/common/collect/TreeTraverser$3$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeTraverser$3$1;-><init>(Lcom/google/common/collect/TreeTraverser$3;Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/google/common/collect/TreeTraverser$3;->val$root:Ljava/lang/Object;

    .line 196
    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeTraverser$3$1;->accept(Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lcom/google/common/collect/TreeTraverser$3;, "Lcom/google/common/collect/TreeTraverser$3;"
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$3;->this$0:Lcom/google/common/collect/TreeTraverser;

    iget-object v1, p0, Lcom/google/common/collect/TreeTraverser$3;->val$root:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeTraverser;->postOrderIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 181
    .local p0, "this":Lcom/google/common/collect/TreeTraverser$3;, "Lcom/google/common/collect/TreeTraverser$3;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeTraverser$3;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
