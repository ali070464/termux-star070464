.class public final synthetic Lcom/google/common/collect/-$$Lambda$KxfAxe-s3ebmIrr-qlO5MIBZODs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$KxfAxe-s3ebmIrr-qlO5MIBZODs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$KxfAxe-s3ebmIrr-qlO5MIBZODs;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$KxfAxe-s3ebmIrr-qlO5MIBZODs;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$KxfAxe-s3ebmIrr-qlO5MIBZODs;->INSTANCE:Lcom/google/common/collect/-$$Lambda$KxfAxe-s3ebmIrr-qlO5MIBZODs;

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

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method
