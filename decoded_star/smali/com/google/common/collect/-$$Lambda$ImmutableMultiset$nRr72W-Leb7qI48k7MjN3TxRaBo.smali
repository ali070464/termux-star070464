.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$nRr72W-Leb7qI48k7MjN3TxRaBo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$nRr72W-Leb7qI48k7MjN3TxRaBo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$nRr72W-Leb7qI48k7MjN3TxRaBo;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$nRr72W-Leb7qI48k7MjN3TxRaBo;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$nRr72W-Leb7qI48k7MjN3TxRaBo;->INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$nRr72W-Leb7qI48k7MjN3TxRaBo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableMultiset;->lambda$toImmutableMultiset$0(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
