.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$U63BkguIBJhAYdgyxBCdYmxKzuE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$U63BkguIBJhAYdgyxBCdYmxKzuE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$U63BkguIBJhAYdgyxBCdYmxKzuE;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$U63BkguIBJhAYdgyxBCdYmxKzuE;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$U63BkguIBJhAYdgyxBCdYmxKzuE;->INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$U63BkguIBJhAYdgyxBCdYmxKzuE;

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

    check-cast p1, Lcom/google/common/collect/Multiset;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableMultiset;->lambda$toImmutableMultiset$3(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p1

    return-object p1
.end method
