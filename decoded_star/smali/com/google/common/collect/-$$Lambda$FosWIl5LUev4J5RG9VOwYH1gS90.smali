.class public final synthetic Lcom/google/common/collect/-$$Lambda$FosWIl5LUev4J5RG9VOwYH1gS90;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$FosWIl5LUev4J5RG9VOwYH1gS90;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$FosWIl5LUev4J5RG9VOwYH1gS90;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$FosWIl5LUev4J5RG9VOwYH1gS90;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$FosWIl5LUev4J5RG9VOwYH1gS90;->INSTANCE:Lcom/google/common/collect/-$$Lambda$FosWIl5LUev4J5RG9VOwYH1gS90;

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

    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    return-object v0
.end method
