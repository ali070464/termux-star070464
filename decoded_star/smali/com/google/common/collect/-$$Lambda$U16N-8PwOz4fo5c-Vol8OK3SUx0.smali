.class public final synthetic Lcom/google/common/collect/-$$Lambda$U16N-8PwOz4fo5c-Vol8OK3SUx0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$U16N-8PwOz4fo5c-Vol8OK3SUx0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$U16N-8PwOz4fo5c-Vol8OK3SUx0;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$U16N-8PwOz4fo5c-Vol8OK3SUx0;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$U16N-8PwOz4fo5c-Vol8OK3SUx0;->INSTANCE:Lcom/google/common/collect/-$$Lambda$U16N-8PwOz4fo5c-Vol8OK3SUx0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->builder()Lcom/google/common/collect/ImmutableRangeSet$Builder;

    move-result-object v0

    return-object v0
.end method
