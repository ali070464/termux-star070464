.class public final Lkotlin/collections/ArrayDeque;
.super Lkotlin/collections/AbstractMutableList;
.source "ArrayDeque.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/ArrayDeque$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractMutableList<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayDeque.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,583:1\n467#1,51:584\n467#1,51:635\n37#2,2:686\n*S KotlinDebug\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n*L\n462#1:584,51\n464#1:635,51\n47#1:686,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0008\u0007\u0018\u0000 P*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001PB\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0006B\u0015\u0008\u0016\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0010\tJ\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u001d\u0010\u0013\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0019J\u001e\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J\u0016\u0010\u001a\u001a\u00020\u00142\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J\u0013\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001cJ\u0008\u0010\u001e\u001a\u00020\u0017H\u0016J\u0016\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0016J\u001e\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0002J\u0010\u0010\"\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0004H\u0002J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0004H\u0002J\u001d\u0010\'\u001a\u00020\u00142\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00140)H\u0082\u0008J\u000b\u0010*\u001a\u00028\u0000\u00a2\u0006\u0002\u0010+J\r\u0010,\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010+J\u0016\u0010-\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0004H\u0096\u0002\u00a2\u0006\u0002\u0010.J\u0010\u0010/\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0015\u00100\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00101J\u0016\u00102\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\u0004H\u0083\u0008\u00a2\u0006\u0002\u0010.J\u0011\u0010!\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0083\u0008JM\u00103\u001a\u00020\u00172>\u00104\u001a:\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u00086\u0012\u0008\u00087\u0012\u0004\u0008\u0008(\u000e\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000b\u00a2\u0006\u000c\u00086\u0012\u0008\u00087\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u001705H\u0000\u00a2\u0006\u0002\u00088J\u0008\u00109\u001a\u00020\u0014H\u0016J\u000b\u0010:\u001a\u00028\u0000\u00a2\u0006\u0002\u0010+J\u0015\u0010;\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00101J\r\u0010<\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010+J\u0010\u0010=\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010>\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0015\u0010?\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0016\u0010@\u001a\u00020\u00142\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J\u0015\u0010A\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0004H\u0016\u00a2\u0006\u0002\u0010.J\u000b\u0010B\u001a\u00028\u0000\u00a2\u0006\u0002\u0010+J\r\u0010C\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010+J\u000b\u0010D\u001a\u00028\u0000\u00a2\u0006\u0002\u0010+J\r\u0010E\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010+J\u0016\u0010F\u001a\u00020\u00142\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J\u001e\u0010G\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010HJ\u0017\u0010I\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bH\u0000\u00a2\u0006\u0004\u0008J\u0010KJ)\u0010I\u001a\u0008\u0012\u0004\u0012\u0002HL0\u000b\"\u0004\u0008\u0001\u0010L2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u0002HL0\u000bH\u0000\u00a2\u0006\u0004\u0008J\u0010NJ\u0015\u0010O\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bH\u0016\u00a2\u0006\u0002\u0010KJ\'\u0010O\u001a\u0008\u0012\u0004\u0012\u0002HL0\u000b\"\u0004\u0008\u0001\u0010L2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u0002HL0\u000bH\u0016\u00a2\u0006\u0002\u0010NR\u0018\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006Q"
    }
    d2 = {
        "Lkotlin/collections/ArrayDeque;",
        "E",
        "Lkotlin/collections/AbstractMutableList;",
        "initialCapacity",
        "",
        "(I)V",
        "()V",
        "elements",
        "",
        "(Ljava/util/Collection;)V",
        "elementData",
        "",
        "",
        "[Ljava/lang/Object;",
        "head",
        "<set-?>",
        "size",
        "getSize",
        "()I",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)Z",
        "",
        "index",
        "(ILjava/lang/Object;)V",
        "addAll",
        "addFirst",
        "(Ljava/lang/Object;)V",
        "addLast",
        "clear",
        "contains",
        "copyCollectionElements",
        "internalIndex",
        "copyElements",
        "newCapacity",
        "decremented",
        "ensureCapacity",
        "minCapacity",
        "filterInPlace",
        "predicate",
        "Lkotlin/Function1;",
        "first",
        "()Ljava/lang/Object;",
        "firstOrNull",
        "get",
        "(I)Ljava/lang/Object;",
        "incremented",
        "indexOf",
        "(Ljava/lang/Object;)I",
        "internalGet",
        "internalStructure",
        "structure",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "internalStructure$kotlin_stdlib",
        "isEmpty",
        "last",
        "lastIndexOf",
        "lastOrNull",
        "negativeMod",
        "positiveMod",
        "remove",
        "removeAll",
        "removeAt",
        "removeFirst",
        "removeFirstOrNull",
        "removeLast",
        "removeLastOrNull",
        "retainAll",
        "set",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "testToArray",
        "testToArray$kotlin_stdlib",
        "()[Ljava/lang/Object;",
        "T",
        "array",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "toArray",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/collections/ArrayDeque$Companion;

.field private static final defaultMinCapacity:I = 0xa

.field private static final emptyElementData:[Ljava/lang/Object;

.field private static final maxArraySize:I = 0x7ffffff7


# instance fields
.field private elementData:[Ljava/lang/Object;

.field private head:I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/collections/ArrayDeque$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/ArrayDeque$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/collections/ArrayDeque;->Companion:Lkotlin/collections/ArrayDeque$Companion;

    .line 562
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    sget-object v0, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    iput-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "initialCapacity"    # I

    .line 29
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    .line 30
    if-nez p1, :cond_0

    sget-object v0, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_0
    if-lez p1, :cond_1

    new-array v0, p1, [Ljava/lang/Object;

    .line 29
    :goto_0
    iput-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    return-void

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    move-object v0, p1

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 686
    .local v1, "$i$f$toTypedArray":I
    move-object v2, v0

    .line 687
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    iput-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 48
    array-length v0, v4

    iput v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 49
    array-length v0, v4

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    sget-object v0, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    iput-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    :cond_1
    return-void

    .line 687
    .restart local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v1    # "$i$f$toTypedArray":I
    .restart local v2    # "thisCollection$iv":Ljava/util/Collection;
    :cond_2
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final synthetic access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlin/collections/ArrayDeque;

    .line 18
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getHead$p(Lkotlin/collections/ArrayDeque;)I
    .locals 1
    .param p0, "$this"    # Lkotlin/collections/ArrayDeque;

    .line 18
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    return v0
.end method

.method public static final synthetic access$getSize$p(Lkotlin/collections/ArrayDeque;)I
    .locals 1
    .param p0, "$this"    # Lkotlin/collections/ArrayDeque;

    .line 18
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$incremented(Lkotlin/collections/ArrayDeque;I)I
    .locals 1
    .param p0, "$this"    # Lkotlin/collections/ArrayDeque;
    .param p1, "index"    # I

    .line 18
    invoke-direct {p0, p1}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$negativeMod(Lkotlin/collections/ArrayDeque;I)I
    .locals 1
    .param p0, "$this"    # Lkotlin/collections/ArrayDeque;
    .param p1, "index"    # I

    .line 18
    invoke-direct {p0, p1}, Lkotlin/collections/ArrayDeque;->negativeMod(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$positiveMod(Lkotlin/collections/ArrayDeque;I)I
    .locals 1
    .param p0, "$this"    # Lkotlin/collections/ArrayDeque;
    .param p1, "index"    # I

    .line 18
    invoke-direct {p0, p1}, Lkotlin/collections/ArrayDeque;->positiveMod(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$setElementData$p(Lkotlin/collections/ArrayDeque;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lkotlin/collections/ArrayDeque;
    .param p1, "<set-?>"    # [Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$setHead$p(Lkotlin/collections/ArrayDeque;I)V
    .locals 0
    .param p0, "$this"    # Lkotlin/collections/ArrayDeque;
    .param p1, "<set-?>"    # I

    .line 18
    iput p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    return-void
.end method

.method public static final synthetic access$setSize$p(Lkotlin/collections/ArrayDeque;I)V
    .locals 0
    .param p0, "$this"    # Lkotlin/collections/ArrayDeque;
    .param p1, "<set-?>"    # I

    .line 18
    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    return-void
.end method

.method private final copyCollectionElements(ILjava/util/Collection;)V
    .locals 5
    .param p1, "internalIndex"    # I
    .param p2, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 257
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 259
    .local v0, "iterator":Ljava/util/Iterator;
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 260
    .local v2, "index":I
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 261
    :cond_0
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 259
    nop

    .end local v2    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    :goto_2
    if-ge v1, v2, :cond_3

    .line 264
    .local v1, "index":I
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 265
    :cond_2
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 263
    nop

    .end local v1    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 268
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 269
    return-void
.end method

.method private final copyElements(I)V
    .locals 5
    .param p1, "newCapacity"    # I

    .line 74
    new-array v0, p1, [Ljava/lang/Object;

    .line 75
    .local v0, "newElements":[Ljava/lang/Object;
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v2, v1

    iget v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v2, v3

    invoke-static {v1, v0, v2, v4, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 77
    iput v4, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 78
    iput-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 79
    return-void
.end method

.method private final decremented(I)I
    .locals 1
    .param p1, "index"    # I

    .line 96
    if-nez p1, :cond_0

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    :goto_0
    return v0
.end method

.method private final ensureCapacity(I)V
    .locals 2
    .param p1, "minCapacity"    # I

    .line 59
    if-ltz p1, :cond_2

    .line 60
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v1, v0

    if-gt p1, v1, :cond_0

    return-void

    .line 61
    :cond_0
    sget-object v1, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 62
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    .line 63
    return-void

    .line 66
    :cond_1
    sget-object v1, Lkotlin/collections/ArrayDeque;->Companion:Lkotlin/collections/ArrayDeque$Companion;

    array-length v0, v0

    invoke-virtual {v1, v0, p1}, Lkotlin/collections/ArrayDeque$Companion;->newCapacity$kotlin_stdlib(II)I

    move-result v0

    .line 67
    .local v0, "newCapacity":I
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->copyElements(I)V

    .line 68
    return-void

    .line 59
    .end local v0    # "newCapacity":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque is too big."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final filterInPlace(Lkotlin/jvm/functions/Function1;)Z
    .locals 11
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 467
    .local v0, "$i$f$filterInPlace":I
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    goto/16 :goto_8

    .line 470
    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {p0, v3}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v1

    .line 471
    .local v1, "tail":I
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v3

    .line 472
    .local v3, "newTail":I
    const/4 v4, 0x0

    .line 474
    .local v4, "modified":Z
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v5

    const/4 v6, 0x0

    if-ge v5, v1, :cond_4

    .line 475
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v2

    :goto_1
    if-ge v2, v1, :cond_3

    .line 476
    .local v2, "index":I
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v2

    .line 478
    .local v5, "element":Ljava/lang/Object;
    nop

    .line 479
    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 480
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "newTail":I
    .local v8, "newTail":I
    aput-object v5, v7, v3

    move v3, v8

    goto :goto_2

    .line 482
    .end local v8    # "newTail":I
    .restart local v3    # "newTail":I
    :cond_2
    const/4 v4, 0x1

    .line 479
    :goto_2
    nop

    .line 475
    .end local v5    # "element":Ljava/lang/Object;
    nop

    .end local v2    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 485
    :cond_3
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v6, v3, v1}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_7

    .line 488
    :cond_4
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v5

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v7

    array-length v7, v7

    :goto_3
    if-ge v5, v7, :cond_6

    .line 489
    .local v5, "index":I
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v5

    .line 490
    .local v8, "element":Ljava/lang/Object;
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v9

    aput-object v6, v9, v5

    .line 492
    nop

    .line 493
    invoke-interface {p1, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 494
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    .end local v3    # "newTail":I
    .local v10, "newTail":I
    aput-object v8, v9, v3

    move v3, v10

    goto :goto_4

    .line 496
    .end local v10    # "newTail":I
    .restart local v3    # "newTail":I
    :cond_5
    const/4 v4, 0x1

    .line 493
    :goto_4
    nop

    .line 488
    .end local v8    # "element":Ljava/lang/Object;
    nop

    .end local v5    # "index":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 499
    :cond_6
    invoke-static {p0, v3}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v3

    .line 501
    nop

    :goto_5
    if-ge v2, v1, :cond_8

    .line 502
    .restart local v2    # "index":I
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v2

    .line 503
    .local v5, "element":Ljava/lang/Object;
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v7

    aput-object v6, v7, v2

    .line 505
    nop

    .line 506
    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 507
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v7

    aput-object v5, v7, v3

    .line 508
    invoke-static {p0, v3}, Lkotlin/collections/ArrayDeque;->access$incremented(Lkotlin/collections/ArrayDeque;I)I

    move-result v3

    goto :goto_6

    .line 510
    :cond_7
    const/4 v4, 0x1

    .line 506
    :goto_6
    nop

    .line 501
    .end local v5    # "element":Ljava/lang/Object;
    nop

    .end local v2    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 513
    :cond_8
    :goto_7
    nop

    .line 514
    if-eqz v4, :cond_9

    .line 515
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v2

    sub-int v2, v3, v2

    invoke-static {p0, v2}, Lkotlin/collections/ArrayDeque;->access$negativeMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v2

    invoke-static {p0, v2}, Lkotlin/collections/ArrayDeque;->access$setSize$p(Lkotlin/collections/ArrayDeque;I)V

    .line 517
    :cond_9
    return v4

    .line 468
    .end local v1    # "tail":I
    .end local v3    # "newTail":I
    .end local v4    # "modified":Z
    :cond_a
    :goto_8
    return v2
.end method

.method private final incremented(I)I
    .locals 1
    .param p1, "index"    # I

    .line 94
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0
.end method

.method private final internalGet(I)Ljava/lang/Object;
    .locals 2
    .param p1, "internalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    .local v0, "$i$f$internalGet":I
    nop

    .line 84
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, p1

    return-object v1
.end method

.method private final internalIndex(I)I
    .locals 2
    .param p1, "index"    # I

    const/4 v0, 0x0

    .line 92
    .local v0, "$i$f$internalIndex":I
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p0, v1}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v1

    return v1
.end method

.method private final negativeMod(I)I
    .locals 1
    .param p1, "index"    # I

    .line 89
    if-gez p1, :cond_0

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    add-int/2addr v0, p1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private final positiveMod(I)I
    .locals 2
    .param p1, "index"    # I

    .line 87
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v0, v0

    sub-int v0, p1, v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 184
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 186
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 187
    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 188
    return-void

    .line 189
    :cond_0
    if-nez p1, :cond_1

    .line 190
    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 191
    return-void

    .line 192
    :cond_1
    nop

    .line 194
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    .line 221
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v0

    .line 223
    .local v0, "internalIndex":I
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    add-int/2addr v2, v1

    shr-int/2addr v2, v1

    const/4 v3, 0x0

    if-ge p1, v2, :cond_3

    .line 225
    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->decremented(I)I

    move-result v2

    .line 226
    .local v2, "decrementedInternalIndex":I
    iget v4, p0, Lkotlin/collections/ArrayDeque;->head:I

    invoke-direct {p0, v4}, Lkotlin/collections/ArrayDeque;->decremented(I)I

    move-result v4

    .line 228
    .local v4, "decrementedHead":I
    iget v5, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-lt v2, v5, :cond_2

    .line 229
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aget-object v6, v3, v5

    aput-object v6, v3, v4

    .line 230
    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v2, 0x1

    invoke-static {v3, v3, v5, v6, v7}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    .line 232
    :cond_2
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v7, v5, -0x1

    array-length v8, v6

    invoke-static {v6, v6, v7, v5, v8}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 233
    iget-object v5, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v6, v5

    sub-int/2addr v6, v1

    aget-object v7, v5, v3

    aput-object v7, v5, v6

    .line 234
    add-int/lit8 v6, v2, 0x1

    invoke-static {v5, v5, v3, v1, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 235
    :goto_0
    nop

    .line 237
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 238
    iput v4, p0, Lkotlin/collections/ArrayDeque;->head:I

    .end local v2    # "decrementedInternalIndex":I
    .end local v4    # "decrementedHead":I
    goto :goto_2

    .line 241
    :cond_3
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {p0, v4}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v2

    .line 243
    .local v2, "tail":I
    if-ge v0, v2, :cond_4

    .line 244
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v3, v4, v0, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    .line 246
    :cond_4
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {v4, v4, v1, v3, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 247
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v5, v4

    sub-int/2addr v5, v1

    aget-object v5, v4, v5

    aput-object v5, v4, v3

    .line 248
    add-int/lit8 v3, v0, 0x1

    array-length v5, v4

    sub-int/2addr v5, v1

    invoke-static {v4, v4, v3, v0, v5}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 249
    :goto_1
    nop

    .line 251
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aput-object p2, v3, v0

    .line 252
    .end local v2    # "tail":I
    :goto_2
    nop

    .line 253
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 254
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 11
    .param p1, "index"    # I
    .param p2, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 281
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 282
    return v1

    .line 283
    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 284
    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 285
    :cond_1
    nop

    .line 287
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    .line 289
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {p0, v2}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v0

    .line 290
    .local v0, "tail":I
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {p0, v2}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v2

    .line 291
    .local v2, "internalIndex":I
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    .line 293
    .local v3, "elementsSize":I
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    shr-int/2addr v4, v5

    if-ge p1, v4, :cond_6

    .line 296
    iget v4, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int v6, v4, v3

    .line 298
    .local v6, "shiftedHead":I
    if-lt v2, v4, :cond_4

    .line 299
    if-ltz v6, :cond_2

    .line 300
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {v1, v1, v6, v4, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    .line 302
    :cond_2
    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v8, v7

    add-int/2addr v6, v8

    .line 303
    sub-int v8, v2, v4

    .line 304
    .local v8, "elementsToShift":I
    array-length v9, v7

    sub-int/2addr v9, v6

    .line 306
    .local v9, "shiftToBack":I
    if-lt v9, v8, :cond_3

    .line 307
    invoke-static {v7, v7, v6, v4, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    .line 309
    :cond_3
    add-int v10, v4, v9

    invoke-static {v7, v7, v6, v4, v10}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 310
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v7, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v7, v9

    invoke-static {v4, v4, v1, v7, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 311
    .end local v8    # "elementsToShift":I
    .end local v9    # "shiftToBack":I
    :goto_0
    nop

    .line 312
    goto :goto_1

    .line 314
    :cond_4
    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v8, v7

    invoke-static {v7, v7, v6, v4, v8}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 315
    if-lt v3, v2, :cond_5

    .line 316
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v7, v4

    sub-int/2addr v7, v3

    invoke-static {v4, v4, v7, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    .line 318
    :cond_5
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v7, v4

    sub-int/2addr v7, v3

    invoke-static {v4, v4, v7, v1, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 319
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {v4, v4, v1, v3, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 320
    :goto_1
    nop

    .line 321
    nop

    .line 322
    iput v6, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 323
    sub-int v1, v2, v3

    invoke-direct {p0, v1}, Lkotlin/collections/ArrayDeque;->negativeMod(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lkotlin/collections/ArrayDeque;->copyCollectionElements(ILjava/util/Collection;)V

    .end local v6    # "shiftedHead":I
    goto :goto_4

    .line 327
    :cond_6
    add-int v4, v2, v3

    .line 329
    .local v4, "shiftedInternalIndex":I
    if-ge v2, v0, :cond_9

    .line 330
    add-int v6, v0, v3

    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v8, v7

    if-gt v6, v8, :cond_7

    .line 331
    invoke-static {v7, v7, v4, v2, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_3

    .line 333
    :cond_7
    array-length v6, v7

    if-lt v4, v6, :cond_8

    .line 334
    array-length v1, v7

    sub-int v1, v4, v1

    invoke-static {v7, v7, v1, v2, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_2

    .line 336
    :cond_8
    add-int v6, v0, v3

    array-length v8, v7

    sub-int/2addr v6, v8

    .line 337
    .local v6, "shiftToFront":I
    sub-int v8, v0, v6

    invoke-static {v7, v7, v1, v8, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 338
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    sub-int v7, v0, v6

    invoke-static {v1, v1, v4, v2, v7}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 339
    .end local v6    # "shiftToFront":I
    :goto_2
    nop

    .line 340
    goto :goto_3

    .line 342
    :cond_9
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {v6, v6, v3, v1, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 343
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v7, v6

    if-lt v4, v7, :cond_a

    .line 344
    array-length v1, v6

    sub-int v1, v4, v1

    array-length v7, v6

    invoke-static {v6, v6, v1, v2, v7}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_3

    .line 346
    :cond_a
    array-length v7, v6

    sub-int/2addr v7, v3

    array-length v8, v6

    invoke-static {v6, v6, v1, v7, v8}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 347
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v6, v1

    sub-int/2addr v6, v3

    invoke-static {v1, v1, v4, v2, v6}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 348
    :goto_3
    nop

    .line 349
    nop

    .line 350
    invoke-direct {p0, v2, p2}, Lkotlin/collections/ArrayDeque;->copyCollectionElements(ILjava/util/Collection;)V

    .line 351
    .end local v4    # "shiftedInternalIndex":I
    :goto_4
    nop

    .line 353
    return v5
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 273
    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    .line 274
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lkotlin/collections/ArrayDeque;->copyCollectionElements(ILjava/util/Collection;)V

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public final addFirst(Ljava/lang/Object;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    .line 126
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->decremented(I)I

    move-result v0

    iput v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 127
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 128
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 129
    return-void
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/collections/ArrayDeque;->ensureCapacity(I)V

    .line 137
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {p0, v2}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v1

    aput-object p1, v0, v1

    .line 138
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 139
    return-void
.end method

.method public clear()V
    .locals 6

    .line 521
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v0

    .line 522
    .local v0, "tail":I
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v1, v0, :cond_0

    .line 523
    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {v4, v3, v1, v0}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_0

    .line 524
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v4, p0, Lkotlin/collections/ArrayDeque;->head:I

    array-length v5, v1

    invoke-static {v1, v3, v4, v5}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 526
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {v1, v3, v2, v0}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 527
    :cond_1
    :goto_0
    nop

    .line 528
    iput v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 529
    iput v2, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 530
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 372
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "ArrayDeque is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final firstOrNull()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 357
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 359
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v0

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 22
    iget v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;

    .line 375
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v0

    .line 377
    .local v0, "tail":I
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-ge v1, v0, :cond_1

    .line 378
    nop

    :goto_0
    if-ge v1, v0, :cond_5

    .line 379
    .local v1, "index":I
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int v2, v1, v2

    return v2

    .line 378
    :cond_0
    nop

    .end local v1    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_1
    if-lt v1, v0, :cond_5

    .line 382
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    :goto_1
    if-ge v1, v2, :cond_3

    .line 383
    .restart local v1    # "index":I
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int v2, v1, v2

    return v2

    .line 382
    :cond_2
    nop

    .end local v1    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 385
    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    .line 386
    .restart local v1    # "index":I
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    add-int/2addr v2, v1

    iget v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v2, v3

    return v2

    .line 385
    :cond_4
    nop

    .end local v1    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 388
    :cond_5
    nop

    .line 390
    const/4 v1, -0x1

    return v1
.end method

.method public final internalStructure$kotlin_stdlib(Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .param p1, "structure"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-[",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "structure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v0

    .line 580
    .local v0, "tail":I
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 581
    .local v1, "head":I
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 98
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v0

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "ArrayDeque is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;

    .line 394
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v0

    .line 396
    .local v0, "tail":I
    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-ge v1, v0, :cond_1

    .line 397
    add-int/lit8 v2, v0, -0x1

    if-lt v2, v1, :cond_5

    .line 398
    .local v2, "index":I
    :goto_0
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int v1, v2, v1

    return v1

    .line 397
    :cond_0
    if-eq v2, v1, :cond_5

    .end local v2    # "index":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 400
    :cond_1
    if-le v1, v0, :cond_5

    .line 401
    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 402
    .local v1, "index":I
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    add-int/2addr v2, v1

    iget v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v2, v3

    return v2

    .line 401
    :cond_2
    nop

    .end local v1    # "index":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 404
    :cond_3
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-lt v1, v2, :cond_5

    .line 405
    .restart local v1    # "index":I
    :goto_2
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int v2, v1, v2

    return v2

    .line 404
    :cond_4
    if-eq v1, v2, :cond_5

    .end local v1    # "index":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 407
    :cond_5
    nop

    .line 409
    const/4 v1, -0x1

    return v1
.end method

.method public final lastOrNull()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v0

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 413
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 414
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 415
    :cond_0
    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->remove(I)Ljava/lang/Object;

    .line 416
    const/4 v1, 0x1

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 14
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    move-object v0, p0

    .local v0, "this_$iv":Lkotlin/collections/ArrayDeque;
    const/4 v1, 0x0

    .line 584
    .local v1, "$i$f$filterInPlace":I
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_a

    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    goto/16 :goto_8

    .line 587
    :cond_1
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v2

    .line 588
    .local v2, "tail$iv":I
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v5

    .line 589
    .local v5, "newTail$iv":I
    const/4 v6, 0x0

    .line 591
    .local v6, "modified$iv":Z
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v7

    const/4 v8, 0x0

    if-ge v7, v2, :cond_4

    .line 592
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v3

    :goto_1
    if-ge v3, v2, :cond_3

    .line 593
    .local v3, "index$iv":I
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v3

    .line 595
    .local v7, "element$iv":Ljava/lang/Object;
    nop

    .line 596
    move-object v9, v7

    .local v9, "it":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 462
    .local v10, "$i$a$-filterInPlace-ArrayDeque$removeAll$1":I
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    .end local v9    # "it":Ljava/lang/Object;
    .end local v10    # "$i$a$-filterInPlace-ArrayDeque$removeAll$1":I
    xor-int/lit8 v9, v11, 0x1

    if-eqz v9, :cond_2

    .line 597
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v5, 0x1

    .end local v5    # "newTail$iv":I
    .local v10, "newTail$iv":I
    aput-object v7, v9, v5

    move v5, v10

    goto :goto_2

    .line 599
    .end local v10    # "newTail$iv":I
    .restart local v5    # "newTail$iv":I
    :cond_2
    const/4 v6, 0x1

    .line 596
    :goto_2
    nop

    .line 592
    .end local v7    # "element$iv":Ljava/lang/Object;
    nop

    .end local v3    # "index$iv":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 602
    :cond_3
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v8, v5, v2}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    move v3, v6

    goto :goto_7

    .line 605
    :cond_4
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v7

    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v9

    array-length v9, v9

    :goto_3
    if-ge v7, v9, :cond_6

    .line 606
    .local v7, "index$iv":I
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v10

    aget-object v10, v10, v7

    .line 607
    .local v10, "element$iv":Ljava/lang/Object;
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v11

    aput-object v8, v11, v7

    .line 609
    nop

    .line 610
    move-object v11, v10

    .local v11, "it":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 462
    .local v12, "$i$a$-filterInPlace-ArrayDeque$removeAll$1":I
    invoke-interface {p1, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v13

    .end local v11    # "it":Ljava/lang/Object;
    .end local v12    # "$i$a$-filterInPlace-ArrayDeque$removeAll$1":I
    xor-int/lit8 v11, v13, 0x1

    if-eqz v11, :cond_5

    .line 611
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v5, 0x1

    .end local v5    # "newTail$iv":I
    .local v12, "newTail$iv":I
    aput-object v10, v11, v5

    move v5, v12

    goto :goto_4

    .line 613
    .end local v12    # "newTail$iv":I
    .restart local v5    # "newTail$iv":I
    :cond_5
    const/4 v6, 0x1

    .line 610
    :goto_4
    nop

    .line 605
    .end local v10    # "element$iv":Ljava/lang/Object;
    nop

    .end local v7    # "index$iv":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 616
    :cond_6
    invoke-static {v0, v5}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v5

    .line 618
    nop

    :goto_5
    if-ge v3, v2, :cond_8

    .line 619
    .restart local v3    # "index$iv":I
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v3

    .line 620
    .local v7, "element$iv":Ljava/lang/Object;
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v9

    aput-object v8, v9, v3

    .line 622
    nop

    .line 623
    move-object v9, v7

    .restart local v9    # "it":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 462
    .local v10, "$i$a$-filterInPlace-ArrayDeque$removeAll$1":I
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    .end local v9    # "it":Ljava/lang/Object;
    .end local v10    # "$i$a$-filterInPlace-ArrayDeque$removeAll$1":I
    xor-int/lit8 v9, v11, 0x1

    if-eqz v9, :cond_7

    .line 624
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v9

    aput-object v7, v9, v5

    .line 625
    invoke-static {v0, v5}, Lkotlin/collections/ArrayDeque;->access$incremented(Lkotlin/collections/ArrayDeque;I)I

    move-result v5

    goto :goto_6

    .line 627
    :cond_7
    const/4 v6, 0x1

    .line 623
    :goto_6
    nop

    .line 618
    .end local v7    # "element$iv":Ljava/lang/Object;
    nop

    .end local v3    # "index$iv":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    move v3, v6

    .line 630
    .end local v6    # "modified$iv":Z
    .local v3, "modified$iv":Z
    :goto_7
    nop

    .line 631
    if-eqz v3, :cond_9

    .line 632
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v4

    sub-int v4, v5, v4

    invoke-static {v0, v4}, Lkotlin/collections/ArrayDeque;->access$negativeMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v4

    invoke-static {v0, v4}, Lkotlin/collections/ArrayDeque;->access$setSize$p(Lkotlin/collections/ArrayDeque;I)V

    .line 634
    :cond_9
    goto :goto_9

    .line 585
    .end local v2    # "tail$iv":I
    .end local v3    # "modified$iv":Z
    .end local v5    # "newTail$iv":I
    :cond_a
    :goto_8
    nop

    .line 462
    .end local v0    # "this_$iv":Lkotlin/collections/ArrayDeque;
    .end local v1    # "$i$f$filterInPlace":I
    :goto_9
    return v3
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 420
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 422
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 424
    :cond_0
    if-nez p1, :cond_1

    .line 425
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 426
    :cond_1
    nop

    .line 428
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v0

    .line 429
    .local v0, "internalIndex":I
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    .line 431
    .local v1, "element":Ljava/lang/Object;
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    const/4 v3, 0x1

    shr-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ge p1, v2, :cond_3

    .line 433
    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-lt v0, v2, :cond_2

    .line 434
    iget-object v5, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v5, v5, v6, v2, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    .line 436
    :cond_2
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {v2, v2, v3, v5, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 437
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v6, v2

    sub-int/2addr v6, v3

    aget-object v6, v2, v6

    aput-object v6, v2, v5

    .line 438
    iget v5, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/lit8 v6, v5, 0x1

    array-length v7, v2

    sub-int/2addr v7, v3

    invoke-static {v2, v2, v6, v5, v7}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 439
    :goto_0
    nop

    .line 441
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v5, p0, Lkotlin/collections/ArrayDeque;->head:I

    aput-object v4, v2, v5

    .line 442
    invoke-direct {p0, v5}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    move-result v2

    iput v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    goto :goto_2

    .line 445
    :cond_3
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {p0, v6}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v2

    .line 447
    .local v2, "internalLastIndex":I
    if-gt v0, v2, :cond_4

    .line 448
    iget-object v5, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    add-int/lit8 v7, v2, 0x1

    invoke-static {v5, v5, v0, v6, v7}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_1

    .line 450
    :cond_4
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    add-int/lit8 v7, v0, 0x1

    array-length v8, v6

    invoke-static {v6, v6, v0, v7, v8}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 451
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v7, v6

    sub-int/2addr v7, v3

    aget-object v8, v6, v5

    aput-object v8, v6, v7

    .line 452
    add-int/lit8 v7, v2, 0x1

    invoke-static {v6, v6, v5, v3, v7}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 453
    :goto_1
    nop

    .line 455
    iget-object v5, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aput-object v4, v5, v2

    .line 456
    .end local v2    # "internalLastIndex":I
    :goto_2
    nop

    .line 457
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 459
    return-object v1
.end method

.method public final removeFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v0

    .line 148
    .local v0, "element":Ljava/lang/Object;
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 149
    invoke-direct {p0, v2}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    move-result v1

    iput v1, p0, Lkotlin/collections/ArrayDeque;->head:I

    .line 150
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 151
    return-object v0

    .line 145
    .end local v0    # "element":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "ArrayDeque is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v0

    .line 166
    .local v0, "internalLastIndex":I
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    .line 167
    .local v1, "element":Ljava/lang/Object;
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 168
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lkotlin/collections/ArrayDeque;->size:I

    .line 169
    return-object v1

    .line 163
    .end local v0    # "internalLastIndex":I
    .end local v1    # "element":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "ArrayDeque is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final removeLastOrNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 12
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    move-object v0, p0

    .local v0, "this_$iv":Lkotlin/collections/ArrayDeque;
    const/4 v1, 0x0

    .line 635
    .local v1, "$i$f$filterInPlace":I
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_a

    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    goto/16 :goto_8

    .line 638
    :cond_1
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v0, v4}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v2

    .line 639
    .local v2, "tail$iv":I
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v4

    .line 640
    .local v4, "newTail$iv":I
    const/4 v5, 0x0

    .line 642
    .local v5, "modified$iv":Z
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v6

    const/4 v7, 0x0

    if-ge v6, v2, :cond_4

    .line 643
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v3

    :goto_1
    if-ge v3, v2, :cond_3

    .line 644
    .local v3, "index$iv":I
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v3

    .line 646
    .local v6, "element$iv":Ljava/lang/Object;
    nop

    .line 647
    move-object v8, v6

    .local v8, "it":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 464
    .local v9, "$i$a$-filterInPlace-ArrayDeque$retainAll$1":I
    invoke-interface {p1, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    .end local v8    # "it":Ljava/lang/Object;
    .end local v9    # "$i$a$-filterInPlace-ArrayDeque$retainAll$1":I
    if-eqz v8, :cond_2

    .line 648
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "newTail$iv":I
    .local v9, "newTail$iv":I
    aput-object v6, v8, v4

    move v4, v9

    goto :goto_2

    .line 650
    .end local v9    # "newTail$iv":I
    .restart local v4    # "newTail$iv":I
    :cond_2
    const/4 v5, 0x1

    .line 647
    :goto_2
    nop

    .line 643
    .end local v6    # "element$iv":Ljava/lang/Object;
    nop

    .end local v3    # "index$iv":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 653
    :cond_3
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v7, v4, v2}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    move v3, v5

    goto :goto_7

    .line 656
    :cond_4
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v6

    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v8

    array-length v8, v8

    :goto_3
    if-ge v6, v8, :cond_6

    .line 657
    .local v6, "index$iv":I
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v9

    aget-object v9, v9, v6

    .line 658
    .local v9, "element$iv":Ljava/lang/Object;
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v10

    aput-object v7, v10, v6

    .line 660
    nop

    .line 661
    move-object v10, v9

    .local v10, "it":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 464
    .local v11, "$i$a$-filterInPlace-ArrayDeque$retainAll$1":I
    invoke-interface {p1, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    .end local v10    # "it":Ljava/lang/Object;
    .end local v11    # "$i$a$-filterInPlace-ArrayDeque$retainAll$1":I
    if-eqz v10, :cond_5

    .line 662
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v4, 0x1

    .end local v4    # "newTail$iv":I
    .local v11, "newTail$iv":I
    aput-object v9, v10, v4

    move v4, v11

    goto :goto_4

    .line 664
    .end local v11    # "newTail$iv":I
    .restart local v4    # "newTail$iv":I
    :cond_5
    const/4 v5, 0x1

    .line 661
    :goto_4
    nop

    .line 656
    .end local v9    # "element$iv":Ljava/lang/Object;
    nop

    .end local v6    # "index$iv":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 667
    :cond_6
    invoke-static {v0, v4}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v4

    .line 669
    nop

    :goto_5
    if-ge v3, v2, :cond_8

    .line 670
    .restart local v3    # "index$iv":I
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v3

    .line 671
    .local v6, "element$iv":Ljava/lang/Object;
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v8

    aput-object v7, v8, v3

    .line 673
    nop

    .line 674
    move-object v8, v6

    .restart local v8    # "it":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 464
    .local v9, "$i$a$-filterInPlace-ArrayDeque$retainAll$1":I
    invoke-interface {p1, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    .end local v8    # "it":Ljava/lang/Object;
    .end local v9    # "$i$a$-filterInPlace-ArrayDeque$retainAll$1":I
    if-eqz v8, :cond_7

    .line 675
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v8

    aput-object v6, v8, v4

    .line 676
    invoke-static {v0, v4}, Lkotlin/collections/ArrayDeque;->access$incremented(Lkotlin/collections/ArrayDeque;I)I

    move-result v4

    goto :goto_6

    .line 678
    :cond_7
    const/4 v5, 0x1

    .line 674
    :goto_6
    nop

    .line 669
    .end local v6    # "element$iv":Ljava/lang/Object;
    nop

    .end local v3    # "index$iv":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    move v3, v5

    .line 681
    .end local v5    # "modified$iv":Z
    .local v3, "modified$iv":Z
    :goto_7
    nop

    .line 682
    if-eqz v3, :cond_9

    .line 683
    invoke-static {v0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v5

    sub-int v5, v4, v5

    invoke-static {v0, v5}, Lkotlin/collections/ArrayDeque;->access$negativeMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v5

    invoke-static {v0, v5}, Lkotlin/collections/ArrayDeque;->access$setSize$p(Lkotlin/collections/ArrayDeque;I)V

    .line 685
    :cond_9
    goto :goto_9

    .line 636
    .end local v2    # "tail$iv":I
    .end local v3    # "modified$iv":Z
    .end local v4    # "newTail$iv":I
    :cond_a
    :goto_8
    nop

    .line 464
    .end local v0    # "this_$iv":Lkotlin/collections/ArrayDeque;
    .end local v1    # "$i$f$filterInPlace":I
    :goto_9
    return v3
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 363
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 365
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v0

    .line 366
    .local v0, "internalIndex":I
    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getElementData$p(Lkotlin/collections/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    .line 367
    .local v1, "oldElement":Ljava/lang/Object;
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 369
    return-object v1
.end method

.method public final testToArray$kotlin_stdlib()[Ljava/lang/Object;
    .locals 1

    .line 559
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final testToArray$kotlin_stdlib([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 554
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .param p1, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    array-length v0, p1

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->arrayOfNulls([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    .line 537
    .local v0, "dest":[Ljava/lang/Object;
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    invoke-static {p0}, Lkotlin/collections/ArrayDeque;->access$getHead$p(Lkotlin/collections/ArrayDeque;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {p0, v2}, Lkotlin/collections/ArrayDeque;->access$positiveMod(Lkotlin/collections/ArrayDeque;I)I

    move-result v8

    .line 538
    .local v8, "tail":I
    iget v4, p0, Lkotlin/collections/ArrayDeque;->head:I

    if-ge v4, v8, :cond_1

    .line 539
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, v0

    move v5, v8

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    .line 540
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 541
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v2, p0, Lkotlin/collections/ArrayDeque;->head:I

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 542
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v2, v1

    iget v3, p0, Lkotlin/collections/ArrayDeque;->head:I

    sub-int/2addr v2, v3

    invoke-static {v1, v0, v2, v4, v8}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 543
    :cond_2
    :goto_1
    nop

    .line 544
    array-length v1, v0

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 545
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 548
    :cond_3
    nop

    .line 549
    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 535
    .end local v0    # "dest":[Ljava/lang/Object;
    .end local v8    # "tail":I
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
