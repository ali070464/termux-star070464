.class public final synthetic Lcom/google/common/collect/-$$Lambda$BtlUjlQmAMbKj3ap3livgXAmCTo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$BtlUjlQmAMbKj3ap3livgXAmCTo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$BtlUjlQmAMbKj3ap3livgXAmCTo;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$BtlUjlQmAMbKj3ap3livgXAmCTo;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$BtlUjlQmAMbKj3ap3livgXAmCTo;->INSTANCE:Lcom/google/common/collect/-$$Lambda$BtlUjlQmAMbKj3ap3livgXAmCTo;

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

    check-cast p1, Lcom/google/common/collect/ImmutableRangeSet$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->build()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method
