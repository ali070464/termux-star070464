.class final Lcom/google/common/graph/AbstractNetwork$3;
.super Ljava/lang/Object;
.source "AbstractNetwork.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractNetwork;->edgeIncidentNodesMap(Lcom/google/common/graph/Network;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TE;",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$network:Lcom/google/common/graph/Network;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Network;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/google/common/graph/AbstractNetwork$3;->val$network:Lcom/google/common/graph/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 245
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$3;->val$network:Lcom/google/common/graph/Network;

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 242
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork$3;->apply(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method
