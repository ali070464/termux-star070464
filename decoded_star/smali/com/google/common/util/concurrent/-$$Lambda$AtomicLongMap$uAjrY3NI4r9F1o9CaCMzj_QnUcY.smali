.class public final synthetic Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$uAjrY3NI4r9F1o9CaCMzj_QnUcY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$uAjrY3NI4r9F1o9CaCMzj_QnUcY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$uAjrY3NI4r9F1o9CaCMzj_QnUcY;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$uAjrY3NI4r9F1o9CaCMzj_QnUcY;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$uAjrY3NI4r9F1o9CaCMzj_QnUcY;->INSTANCE:Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$uAjrY3NI4r9F1o9CaCMzj_QnUcY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lcom/google/common/util/concurrent/AtomicLongMap;->lambda$uAjrY3NI4r9F1o9CaCMzj_QnUcY(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method
