.class Lcom/google/common/graph/Traverser$TreeTraverser$2;
.super Ljava/lang/Object;
.source "Traverser.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser$TreeTraverser;->depthFirstPreOrder(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/Traverser$TreeTraverser;

.field final synthetic val$startNodes:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$TreeTraverser;Ljava/lang/Iterable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/graph/Traverser$TreeTraverser;

    .line 530
    .local p0, "this":Lcom/google/common/graph/Traverser$TreeTraverser$2;, "Lcom/google/common/graph/Traverser$TreeTraverser$2;"
    iput-object p1, p0, Lcom/google/common/graph/Traverser$TreeTraverser$2;->this$0:Lcom/google/common/graph/Traverser$TreeTraverser;

    iput-object p2, p0, Lcom/google/common/graph/Traverser$TreeTraverser$2;->val$startNodes:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    .line 533
    .local p0, "this":Lcom/google/common/graph/Traverser$TreeTraverser$2;, "Lcom/google/common/graph/Traverser$TreeTraverser$2;"
    new-instance v0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;

    iget-object v1, p0, Lcom/google/common/graph/Traverser$TreeTraverser$2;->this$0:Lcom/google/common/graph/Traverser$TreeTraverser;

    iget-object v2, p0, Lcom/google/common/graph/Traverser$TreeTraverser$2;->val$startNodes:Ljava/lang/Iterable;

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;-><init>(Lcom/google/common/graph/Traverser$TreeTraverser;Ljava/lang/Iterable;)V

    return-object v0
.end method
