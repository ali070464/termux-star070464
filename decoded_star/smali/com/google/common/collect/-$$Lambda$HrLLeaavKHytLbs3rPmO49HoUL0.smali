.class public final synthetic Lcom/google/common/collect/-$$Lambda$HrLLeaavKHytLbs3rPmO49HoUL0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$HrLLeaavKHytLbs3rPmO49HoUL0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$HrLLeaavKHytLbs3rPmO49HoUL0;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$HrLLeaavKHytLbs3rPmO49HoUL0;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$HrLLeaavKHytLbs3rPmO49HoUL0;->INSTANCE:Lcom/google/common/collect/-$$Lambda$HrLLeaavKHytLbs3rPmO49HoUL0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->combine(Lcom/google/common/collect/ImmutableMultimap$Builder;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method
