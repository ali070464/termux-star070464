.class public final synthetic Lcom/google/common/hash/-$$Lambda$BloomFilter$bYHgOZxJftGbm8MSCPdAxjcRRqQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/common/hash/Funnel;

.field public final synthetic f$1:J

.field public final synthetic f$2:D


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/hash/Funnel;JD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/hash/-$$Lambda$BloomFilter$bYHgOZxJftGbm8MSCPdAxjcRRqQ;->f$0:Lcom/google/common/hash/Funnel;

    iput-wide p2, p0, Lcom/google/common/hash/-$$Lambda$BloomFilter$bYHgOZxJftGbm8MSCPdAxjcRRqQ;->f$1:J

    iput-wide p4, p0, Lcom/google/common/hash/-$$Lambda$BloomFilter$bYHgOZxJftGbm8MSCPdAxjcRRqQ;->f$2:D

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/common/hash/-$$Lambda$BloomFilter$bYHgOZxJftGbm8MSCPdAxjcRRqQ;->f$0:Lcom/google/common/hash/Funnel;

    iget-wide v1, p0, Lcom/google/common/hash/-$$Lambda$BloomFilter$bYHgOZxJftGbm8MSCPdAxjcRRqQ;->f$1:J

    iget-wide v3, p0, Lcom/google/common/hash/-$$Lambda$BloomFilter$bYHgOZxJftGbm8MSCPdAxjcRRqQ;->f$2:D

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/hash/BloomFilter;->lambda$toBloomFilter$0(Lcom/google/common/hash/Funnel;JD)Lcom/google/common/hash/BloomFilter;

    move-result-object v0

    return-object v0
.end method
