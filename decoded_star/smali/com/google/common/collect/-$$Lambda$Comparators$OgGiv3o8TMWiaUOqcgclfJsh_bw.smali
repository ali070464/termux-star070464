.class public final synthetic Lcom/google/common/collect/-$$Lambda$Comparators$OgGiv3o8TMWiaUOqcgclfJsh_bw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$Comparators$OgGiv3o8TMWiaUOqcgclfJsh_bw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$Comparators$OgGiv3o8TMWiaUOqcgclfJsh_bw;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$Comparators$OgGiv3o8TMWiaUOqcgclfJsh_bw;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$Comparators$OgGiv3o8TMWiaUOqcgclfJsh_bw;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Comparators$OgGiv3o8TMWiaUOqcgclfJsh_bw;

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

    check-cast p1, Ljava/util/Optional;

    invoke-static {p1}, Lcom/google/common/collect/Comparators;->lambda$emptiesFirst$1(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
