.class public final synthetic Lcom/google/common/collect/-$$Lambda$7wvXIDTYLRn2hXiaQ5jXCq33QvA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$7wvXIDTYLRn2hXiaQ5jXCq33QvA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$7wvXIDTYLRn2hXiaQ5jXCq33QvA;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$7wvXIDTYLRn2hXiaQ5jXCq33QvA;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$7wvXIDTYLRn2hXiaQ5jXCq33QvA;->INSTANCE:Lcom/google/common/collect/-$$Lambda$7wvXIDTYLRn2hXiaQ5jXCq33QvA;

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

    check-cast p1, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->build()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method
