.class public final synthetic Lcom/google/common/cache/-$$Lambda$LocalCache$EntrySet$wyX9Fr3AG0HGMyfXw_doqMI5_xM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/-$$Lambda$LocalCache$EntrySet$wyX9Fr3AG0HGMyfXw_doqMI5_xM;->f$0:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/-$$Lambda$LocalCache$EntrySet$wyX9Fr3AG0HGMyfXw_doqMI5_xM;->f$0:Ljava/util/function/Predicate;

    invoke-static {v0, p1, p2}, Lcom/google/common/cache/LocalCache$EntrySet;->lambda$removeIf$0(Ljava/util/function/Predicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
