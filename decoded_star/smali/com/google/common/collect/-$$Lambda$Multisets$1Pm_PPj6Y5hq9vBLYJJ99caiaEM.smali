.class public final synthetic Lcom/google/common/collect/-$$Lambda$Multisets$1Pm_PPj6Y5hq9vBLYJJ99caiaEM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$Multisets$1Pm_PPj6Y5hq9vBLYJJ99caiaEM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$Multisets$1Pm_PPj6Y5hq9vBLYJJ99caiaEM;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$Multisets$1Pm_PPj6Y5hq9vBLYJJ99caiaEM;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$Multisets$1Pm_PPj6Y5hq9vBLYJJ99caiaEM;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Multisets$1Pm_PPj6Y5hq9vBLYJJ99caiaEM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    invoke-static {p1}, Lcom/google/common/collect/Multisets;->lambda$spliteratorImpl$2(Lcom/google/common/collect/Multiset$Entry;)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method
