.class public final Lkotlin/time/Duration;
.super Ljava/lang/Object;
.source "Duration.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/Duration$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/time/Duration;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u00084\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0087@\u0018\u0000 \u00a5\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u00a5\u0001B\u0014\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J%\u0010K\u001a\u00020\u00002\u0006\u0010L\u001a\u00020\u00032\u0006\u0010M\u001a\u00020\u0003H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008N\u0010OJ\u001b\u0010P\u001a\u00020\t2\u0006\u0010Q\u001a\u00020\u0000H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008R\u0010SJ\u001e\u0010T\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u000fH\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008V\u0010WJ\u001e\u0010T\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\tH\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008V\u0010XJ\u001b\u0010T\u001a\u00020\u000f2\u0006\u0010Q\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008Y\u0010ZJ\u001a\u0010[\u001a\u00020\\2\u0008\u0010Q\u001a\u0004\u0018\u00010]H\u00d6\u0003\u00a2\u0006\u0004\u0008^\u0010_J\u0010\u0010`\u001a\u00020\tH\u00d6\u0001\u00a2\u0006\u0004\u0008a\u0010\rJ\r\u0010b\u001a\u00020\\\u00a2\u0006\u0004\u0008c\u0010dJ\u000f\u0010e\u001a\u00020\\H\u0002\u00a2\u0006\u0004\u0008f\u0010dJ\u000f\u0010g\u001a\u00020\\H\u0002\u00a2\u0006\u0004\u0008h\u0010dJ\r\u0010i\u001a\u00020\\\u00a2\u0006\u0004\u0008j\u0010dJ\r\u0010k\u001a\u00020\\\u00a2\u0006\u0004\u0008l\u0010dJ\r\u0010m\u001a\u00020\\\u00a2\u0006\u0004\u0008n\u0010dJ\u001b\u0010o\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008p\u0010qJ\u001b\u0010r\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008s\u0010qJ\u0017\u0010t\u001a\u00020\t2\u0006\u0010I\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008u\u0010vJ\u001e\u0010w\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u000fH\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008x\u0010WJ\u001e\u0010w\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\tH\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008x\u0010XJ\u00a3\u0001\u0010y\u001a\u0002Hz\"\u0004\u0008\u0000\u0010z2y\u0010{\u001au\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008}\u0012\u0008\u0008~\u0012\u0004\u0008\u0008(\u007f\u0012\u0014\u0012\u00120\t\u00a2\u0006\r\u0008}\u0012\t\u0008~\u0012\u0005\u0008\u0008(\u0080\u0001\u0012\u0014\u0012\u00120\t\u00a2\u0006\r\u0008}\u0012\t\u0008~\u0012\u0005\u0008\u0008(\u0081\u0001\u0012\u0014\u0012\u00120\t\u00a2\u0006\r\u0008}\u0012\t\u0008~\u0012\u0005\u0008\u0008(\u0082\u0001\u0012\u0014\u0012\u00120\t\u00a2\u0006\r\u0008}\u0012\t\u0008~\u0012\u0005\u0008\u0008(\u0083\u0001\u0012\u0004\u0012\u0002Hz0|H\u0086\u0008\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0006\u0008\u0084\u0001\u0010\u0085\u0001J\u008f\u0001\u0010y\u001a\u0002Hz\"\u0004\u0008\u0000\u0010z2e\u0010{\u001aa\u0012\u0014\u0012\u00120\t\u00a2\u0006\r\u0008}\u0012\t\u0008~\u0012\u0005\u0008\u0008(\u0080\u0001\u0012\u0014\u0012\u00120\t\u00a2\u0006\r\u0008}\u0012\t\u0008~\u0012\u0005\u0008\u0008(\u0081\u0001\u0012\u0014\u0012\u00120\t\u00a2\u0006\r\u0008}\u0012\t\u0008~\u0012\u0005\u0008\u0008(\u0082\u0001\u0012\u0014\u0012\u00120\t\u00a2\u0006\r\u0008}\u0012\t\u0008~\u0012\u0005\u0008\u0008(\u0083\u0001\u0012\u0004\u0012\u0002Hz0\u0086\u0001H\u0086\u0008\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0006\u0008\u0084\u0001\u0010\u0087\u0001Jy\u0010y\u001a\u0002Hz\"\u0004\u0008\u0000\u0010z2O\u0010{\u001aK\u0012\u0014\u0012\u00120\t\u00a2\u0006\r\u0008}\u0012\t\u0008~\u0012\u0005\u0008\u0008(\u0081\u0001\u0012\u0014\u0012\u00120\t\u00a2\u0006\r\u0008}\u0012\t\u0008~\u0012\u0005\u0008\u0008(\u0082\u0001\u0012\u0014\u0012\u00120\t\u00a2\u0006\r\u0008}\u0012\t\u0008~\u0012\u0005\u0008\u0008(\u0083\u0001\u0012\u0004\u0012\u0002Hz0\u0088\u0001H\u0086\u0008\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0006\u0008\u0084\u0001\u0010\u0089\u0001Jc\u0010y\u001a\u0002Hz\"\u0004\u0008\u0000\u0010z29\u0010{\u001a5\u0012\u0014\u0012\u00120\u0003\u00a2\u0006\r\u0008}\u0012\t\u0008~\u0012\u0005\u0008\u0008(\u0082\u0001\u0012\u0014\u0012\u00120\t\u00a2\u0006\r\u0008}\u0012\t\u0008~\u0012\u0005\u0008\u0008(\u0083\u0001\u0012\u0004\u0012\u0002Hz0\u008a\u0001H\u0086\u0008\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0006\u0008\u0084\u0001\u0010\u008b\u0001J\u001e\u0010\u008c\u0001\u001a\u00020\u000f2\u000c\u0010\u008d\u0001\u001a\u00070Dj\u0003`\u008e\u0001\u00a2\u0006\u0006\u0008\u008f\u0001\u0010\u0090\u0001J\u001e\u0010\u0091\u0001\u001a\u00020\t2\u000c\u0010\u008d\u0001\u001a\u00070Dj\u0003`\u008e\u0001\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0093\u0001J\u0011\u0010\u0094\u0001\u001a\u00030\u0095\u0001\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u0097\u0001J\u001e\u0010\u0098\u0001\u001a\u00020\u00032\u000c\u0010\u008d\u0001\u001a\u00070Dj\u0003`\u008e\u0001\u00a2\u0006\u0006\u0008\u0099\u0001\u0010\u009a\u0001J\u0011\u0010\u009b\u0001\u001a\u00020\u0003H\u0007\u00a2\u0006\u0005\u0008\u009c\u0001\u0010\u0005J\u0011\u0010\u009d\u0001\u001a\u00020\u0003H\u0007\u00a2\u0006\u0005\u0008\u009e\u0001\u0010\u0005J\u0013\u0010\u009f\u0001\u001a\u00030\u0095\u0001H\u0016\u00a2\u0006\u0006\u0008\u00a0\u0001\u0010\u0097\u0001J*\u0010\u009f\u0001\u001a\u00030\u0095\u00012\u000c\u0010\u008d\u0001\u001a\u00070Dj\u0003`\u008e\u00012\t\u0008\u0002\u0010\u00a1\u0001\u001a\u00020\t\u00a2\u0006\u0006\u0008\u00a0\u0001\u0010\u00a2\u0001J\u0018\u0010\u00a3\u0001\u001a\u00020\u0000H\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0005\u0008\u00a4\u0001\u0010\u0005R\u0017\u0010\u0006\u001a\u00020\u00008F\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u001a\u0010\u0008\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0014\u0010\u000b\u001a\u0004\u0008\u0015\u0010\u0012R\u001a\u0010\u0016\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0017\u0010\u000b\u001a\u0004\u0008\u0018\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001a\u0010\u000b\u001a\u0004\u0008\u001b\u0010\u0012R\u001a\u0010\u001c\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001d\u0010\u000b\u001a\u0004\u0008\u001e\u0010\u0012R\u001a\u0010\u001f\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008 \u0010\u000b\u001a\u0004\u0008!\u0010\u0012R\u001a\u0010\"\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008#\u0010\u000b\u001a\u0004\u0008$\u0010\u0012R\u001a\u0010%\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008&\u0010\u000b\u001a\u0004\u0008\'\u0010\u0005R\u001a\u0010(\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008)\u0010\u000b\u001a\u0004\u0008*\u0010\u0005R\u001a\u0010+\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008,\u0010\u000b\u001a\u0004\u0008-\u0010\u0005R\u001a\u0010.\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008/\u0010\u000b\u001a\u0004\u00080\u0010\u0005R\u001a\u00101\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00082\u0010\u000b\u001a\u0004\u00083\u0010\u0005R\u001a\u00104\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00085\u0010\u000b\u001a\u0004\u00086\u0010\u0005R\u001a\u00107\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00088\u0010\u000b\u001a\u0004\u00089\u0010\u0005R\u001a\u0010:\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008;\u0010\u000b\u001a\u0004\u0008<\u0010\rR\u001a\u0010=\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008>\u0010\u000b\u001a\u0004\u0008?\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010@\u001a\u00020\t8@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008A\u0010\u000b\u001a\u0004\u0008B\u0010\rR\u0014\u0010C\u001a\u00020D8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010FR\u0015\u0010G\u001a\u00020\t8\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010\rR\u0014\u0010I\u001a\u00020\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010\u0005\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u00f8\u0001\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u009920\u0001\u00a8\u0006\u00a6\u0001"
    }
    d2 = {
        "Lkotlin/time/Duration;",
        "",
        "rawValue",
        "",
        "constructor-impl",
        "(J)J",
        "absoluteValue",
        "getAbsoluteValue-UwyO8pc",
        "hoursComponent",
        "",
        "getHoursComponent$annotations",
        "()V",
        "getHoursComponent-impl",
        "(J)I",
        "inDays",
        "",
        "getInDays$annotations",
        "getInDays-impl",
        "(J)D",
        "inHours",
        "getInHours$annotations",
        "getInHours-impl",
        "inMicroseconds",
        "getInMicroseconds$annotations",
        "getInMicroseconds-impl",
        "inMilliseconds",
        "getInMilliseconds$annotations",
        "getInMilliseconds-impl",
        "inMinutes",
        "getInMinutes$annotations",
        "getInMinutes-impl",
        "inNanoseconds",
        "getInNanoseconds$annotations",
        "getInNanoseconds-impl",
        "inSeconds",
        "getInSeconds$annotations",
        "getInSeconds-impl",
        "inWholeDays",
        "getInWholeDays$annotations",
        "getInWholeDays-impl",
        "inWholeHours",
        "getInWholeHours$annotations",
        "getInWholeHours-impl",
        "inWholeMicroseconds",
        "getInWholeMicroseconds$annotations",
        "getInWholeMicroseconds-impl",
        "inWholeMilliseconds",
        "getInWholeMilliseconds$annotations",
        "getInWholeMilliseconds-impl",
        "inWholeMinutes",
        "getInWholeMinutes$annotations",
        "getInWholeMinutes-impl",
        "inWholeNanoseconds",
        "getInWholeNanoseconds$annotations",
        "getInWholeNanoseconds-impl",
        "inWholeSeconds",
        "getInWholeSeconds$annotations",
        "getInWholeSeconds-impl",
        "minutesComponent",
        "getMinutesComponent$annotations",
        "getMinutesComponent-impl",
        "nanosecondsComponent",
        "getNanosecondsComponent$annotations",
        "getNanosecondsComponent-impl",
        "secondsComponent",
        "getSecondsComponent$annotations",
        "getSecondsComponent-impl",
        "storageUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "getStorageUnit-impl",
        "(J)Ljava/util/concurrent/TimeUnit;",
        "unitDiscriminator",
        "getUnitDiscriminator-impl",
        "value",
        "getValue-impl",
        "addValuesMixedRanges",
        "thisMillis",
        "otherNanos",
        "addValuesMixedRanges-UwyO8pc",
        "(JJJ)J",
        "compareTo",
        "other",
        "compareTo-LRDsOJo",
        "(JJ)I",
        "div",
        "scale",
        "div-UwyO8pc",
        "(JD)J",
        "(JI)J",
        "div-LRDsOJo",
        "(JJ)D",
        "equals",
        "",
        "",
        "equals-impl",
        "(JLjava/lang/Object;)Z",
        "hashCode",
        "hashCode-impl",
        "isFinite",
        "isFinite-impl",
        "(J)Z",
        "isInMillis",
        "isInMillis-impl",
        "isInNanos",
        "isInNanos-impl",
        "isInfinite",
        "isInfinite-impl",
        "isNegative",
        "isNegative-impl",
        "isPositive",
        "isPositive-impl",
        "minus",
        "minus-LRDsOJo",
        "(JJ)J",
        "plus",
        "plus-LRDsOJo",
        "precision",
        "precision-impl",
        "(JD)I",
        "times",
        "times-UwyO8pc",
        "toComponents",
        "T",
        "action",
        "Lkotlin/Function5;",
        "Lkotlin/ParameterName;",
        "name",
        "days",
        "hours",
        "minutes",
        "seconds",
        "nanoseconds",
        "toComponents-impl",
        "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;",
        "Lkotlin/Function4;",
        "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;",
        "Lkotlin/Function3;",
        "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;",
        "Lkotlin/Function2;",
        "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "toDouble",
        "unit",
        "Lkotlin/time/DurationUnit;",
        "toDouble-impl",
        "(JLjava/util/concurrent/TimeUnit;)D",
        "toInt",
        "toInt-impl",
        "(JLjava/util/concurrent/TimeUnit;)I",
        "toIsoString",
        "",
        "toIsoString-impl",
        "(J)Ljava/lang/String;",
        "toLong",
        "toLong-impl",
        "(JLjava/util/concurrent/TimeUnit;)J",
        "toLongMilliseconds",
        "toLongMilliseconds-impl",
        "toLongNanoseconds",
        "toLongNanoseconds-impl",
        "toString",
        "toString-impl",
        "decimals",
        "(JLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;",
        "unaryMinus",
        "unaryMinus-UwyO8pc",
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

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/Duration$Companion;

.field private static final INFINITE:J

.field private static final NEG_INFINITE:J

.field private static final ZERO:J


# instance fields
.field private final rawValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/time/Duration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/Duration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 54
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->ZERO:J

    .line 57
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->INFINITE:J

    .line 58
    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0
    .param p1, "rawValue"    # J

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/Duration;->rawValue:J

    return-void
.end method

.method public static final synthetic access$getINFINITE$cp-UwyO8pc()J
    .locals 2

    .line 34
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    return-wide v0
.end method

.method public static final synthetic access$getNEG_INFINITE$cp-UwyO8pc()J
    .locals 2

    .line 34
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    return-wide v0
.end method

.method public static final synthetic access$getZERO$cp-UwyO8pc()J
    .locals 2

    .line 34
    sget-wide v0, Lkotlin/time/Duration;->ZERO:J

    return-wide v0
.end method

.method private static final addValuesMixedRanges-UwyO8pc(JJJ)J
    .locals 10
    .param p0, "$this"    # J
    .param p2, "thisMillis"    # J
    .param p4, "otherNanos"    # J

    .line 218
    invoke-static {p4, p5}, Lkotlin/time/DurationKt;->access$nanosToMillis(J)J

    move-result-wide v0

    .line 219
    .local v0, "otherMillis":J
    add-long v8, p2, v0

    .line 220
    .local v8, "resultMillis":J
    const-wide v2, -0x431bde82d7aL

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v2, 0x431bde82d7aL

    cmp-long v2, v2, v8

    if-ltz v2, :cond_1

    .line 221
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v2

    sub-long v2, p4, v2

    .line 222
    .local v2, "otherNanoRemainder":J
    invoke-static {v8, v9}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide v2

    .end local v2    # "otherNanoRemainder":J
    goto :goto_1

    .line 224
    :cond_1
    :goto_0
    const-wide v4, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v6, 0x3fffffffffffffffL    # 1.9999999999999998

    move-wide v2, v8

    invoke-static/range {v2 .. v7}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v2

    .line 220
    :goto_1
    return-wide v2
.end method

.method public static final synthetic box-impl(J)Lkotlin/time/Duration;
    .locals 1

    new-instance v0, Lkotlin/time/Duration;

    invoke-direct {v0, p0, p1}, Lkotlin/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public static compareTo-LRDsOJo(JJ)I
    .locals 7
    .param p0, "$this"    # J
    .param p2, "other"    # J

    .line 368
    xor-long v0, p0, p2

    .line 369
    .local v0, "compareBits":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    long-to-int v2, v0

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    goto :goto_1

    .line 372
    :cond_0
    move-wide v2, p0

    .local v2, "$this$iv":J
    const/4 v4, 0x0

    .line 1020
    .local v4, "$i$f$getUnitDiscriminator":I
    long-to-int v5, v2

    and-int/lit8 v2, v5, 0x1

    .line 372
    .end local v2    # "$this$iv":J
    .end local v4    # "$i$f$getUnitDiscriminator":I
    move-wide v3, p2

    .local v3, "$this$iv":J
    const/4 v5, 0x0

    .line 1020
    .local v5, "$i$f$getUnitDiscriminator":I
    long-to-int v6, v3

    and-int/lit8 v3, v6, 0x1

    .line 372
    .end local v3    # "$this$iv":J
    .end local v5    # "$i$f$getUnitDiscriminator":I
    sub-int/2addr v2, v3

    .line 373
    .local v2, "r":I
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v3

    if-eqz v3, :cond_1

    neg-int v3, v2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    return v3

    .line 370
    .end local v2    # "r":I
    :cond_2
    :goto_1
    cmp-long v2, p0, p2

    return v2
.end method

.method public static constructor-impl(J)J
    .locals 6
    .param p0, "rawValue"    # J

    .line 34
    nop

    .line 42
    nop

    .line 44
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    const-wide v0, 0x3ffffffffffa14bfL    # 1.9999999999138678

    const-wide v2, -0x3ffffffffffa14bfL    # -2.0000000001722644

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ns is out of nanoseconds range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 47
    :cond_1
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4

    .line 48
    const-wide v0, 0x431bde82d7aL

    const-wide v2, -0x431bde82d7aL

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 49
    :goto_0
    nop

    .line 50
    return-wide p0

    .line 48
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms is denormalized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 47
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms is out of milliseconds range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final div-LRDsOJo(JJ)D
    .locals 5
    .param p0, "$this"    # J
    .param p2, "other"    # J

    .line 348
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {p2, p3}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lkotlin/comparisons/ComparisonsKt;->maxOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    .line 349
    .local v0, "coarserUnit":Ljava/util/concurrent/TimeUnit;
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v1

    invoke-static {p2, p3, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v3

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public static final div-UwyO8pc(JD)J
    .locals 6
    .param p0, "$this"    # J
    .param p2, "scale"    # D

    .line 336
    invoke-static {p2, p3}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    .line 337
    .local v0, "intScale":I
    int-to-double v1, v0

    cmpg-double v1, v1, p2

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 338
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->div-UwyO8pc(JI)J

    move-result-wide v1

    return-wide v1

    .line 341
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    .line 342
    .local v1, "unit":Ljava/util/concurrent/TimeUnit;
    invoke-static {p0, p1, v1}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v2

    div-double/2addr v2, p2

    .line 343
    .local v2, "result":D
    invoke-static {v2, v3, v1}, Lkotlin/time/DurationKt;->toDuration(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    return-wide v4
.end method

.method public static final div-UwyO8pc(JI)J
    .locals 6
    .param p0, "$this"    # J
    .param p2, "scale"    # I

    .line 306
    if-nez p2, :cond_2

    .line 307
    nop

    .line 308
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isPositive-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    goto :goto_0

    .line 309
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    .line 307
    :goto_0
    return-wide v0

    .line 310
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dividing zero duration by zero yields an undefined result."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 313
    :cond_2
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 314
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    int-to-long v2, p2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide v0

    return-wide v0

    .line 316
    :cond_3
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 317
    invoke-static {p2}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->times-UwyO8pc(JI)J

    move-result-wide v0

    return-wide v0

    .line 319
    :cond_4
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    int-to-long v2, p2

    div-long/2addr v0, v2

    .line 321
    .local v0, "result":J
    const-wide v2, 0x431bde82d7aL

    const-wide v4, -0x431bde82d7aL

    cmp-long v4, v4, v0

    if-lez v4, :cond_5

    goto :goto_1

    :cond_5
    cmp-long v2, v2, v0

    if-ltz v2, :cond_6

    .line 322
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v2

    int-to-long v4, p2

    mul-long/2addr v4, v0

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v2

    int-to-long v4, p2

    div-long/2addr v2, v4

    .line 323
    .local v2, "rem":J
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide v4

    return-wide v4

    .line 325
    .end local v2    # "rem":J
    :cond_6
    :goto_1
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p2, Lkotlin/time/Duration;

    if-eqz v0, :cond_0

    check-cast p2, Lkotlin/time/Duration;

    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 1

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final getAbsoluteValue-UwyO8pc(J)J
    .locals 2
    .param p0, "$this"    # J

    .line 365
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p0

    :goto_0
    return-wide v0
.end method

.method public static synthetic getHoursComponent$annotations()V
    .locals 0

    return-void
.end method

.method public static final getHoursComponent-impl(J)I
    .locals 4
    .param p0, "$this"    # J

    .line 443
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeHours-impl(J)J

    move-result-wide v0

    const/16 v2, 0x18

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public static synthetic getInDays$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeDays property instead or convert toDouble(DAYS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.DAYS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInDays-impl(J)D
    .locals 2
    .param p0, "$this"    # J

    .line 511
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInHours$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeHours property instead or convert toDouble(HOURS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.HOURS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInHours-impl(J)D
    .locals 2
    .param p0, "$this"    # J

    .line 515
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInMicroseconds$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeMicroseconds property instead or convert toDouble(MICROSECONDS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.MICROSECONDS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInMicroseconds-impl(J)D
    .locals 2
    .param p0, "$this"    # J

    .line 531
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInMilliseconds$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeMilliseconds property instead or convert toDouble(MILLISECONDS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.MILLISECONDS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInMilliseconds-impl(J)D
    .locals 2
    .param p0, "$this"    # J

    .line 527
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInMinutes$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeMinutes property instead or convert toDouble(MINUTES) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.MINUTES)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInMinutes-impl(J)D
    .locals 2
    .param p0, "$this"    # J

    .line 519
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInNanoseconds$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeNanoseconds property instead or convert toDouble(NANOSECONDS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.NANOSECONDS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInNanoseconds-impl(J)D
    .locals 2
    .param p0, "$this"    # J

    .line 535
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInSeconds$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeSeconds property instead or convert toDouble(SECONDS) if a double value is required."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toDouble(DurationUnit.SECONDS)"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final getInSeconds-impl(J)D
    .locals 2
    .param p0, "$this"    # J

    .line 523
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInWholeDays$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInWholeDays-impl(J)J
    .locals 2
    .param p0, "$this"    # J

    .line 545
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInWholeHours$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInWholeHours-impl(J)J
    .locals 2
    .param p0, "$this"    # J

    .line 554
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInWholeMicroseconds$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInWholeMicroseconds-impl(J)J
    .locals 2
    .param p0, "$this"    # J

    .line 596
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInWholeMilliseconds$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInWholeMilliseconds-impl(J)J
    .locals 2
    .param p0, "$this"    # J

    .line 582
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInMillis-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->isFinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static synthetic getInWholeMinutes$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInWholeMinutes-impl(J)J
    .locals 2
    .param p0, "$this"    # J

    .line 563
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getInWholeNanoseconds$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInWholeNanoseconds-impl(J)J
    .locals 4
    .param p0, "$this"    # J

    .line 610
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    .line 611
    .local v0, "value":J
    nop

    .line 612
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 613
    :cond_0
    const-wide v2, 0x8637bd05af6L

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    .line 614
    :cond_1
    const-wide v2, -0x8637bd05af6L

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0

    .line 615
    :cond_2
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v2

    .line 611
    :goto_0
    return-wide v2
.end method

.method public static synthetic getInWholeSeconds$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInWholeSeconds-impl(J)J
    .locals 2
    .param p0, "$this"    # J

    .line 572
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic getMinutesComponent$annotations()V
    .locals 0

    return-void
.end method

.method public static final getMinutesComponent-impl(J)I
    .locals 4
    .param p0, "$this"    # J

    .line 447
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeMinutes-impl(J)J

    move-result-wide v0

    const/16 v2, 0x3c

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public static synthetic getNanosecondsComponent$annotations()V
    .locals 0

    return-void
.end method

.method public static final getNanosecondsComponent-impl(J)I
    .locals 4
    .param p0, "$this"    # J

    .line 455
    nop

    .line 456
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 457
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInMillis-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 458
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    const v2, 0x3b9aca00

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 455
    :goto_0
    nop

    .line 459
    return v0
.end method

.method public static synthetic getSecondsComponent$annotations()V
    .locals 0

    return-void
.end method

.method public static final getSecondsComponent-impl(J)I
    .locals 4
    .param p0, "$this"    # J

    .line 451
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v0

    const/16 v2, 0x3c

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method private static final getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;
    .locals 1
    .param p0, "$this"    # J

    .line 40
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_0
    return-object v0
.end method

.method private static final getUnitDiscriminator-impl(J)I
    .locals 2
    .param p0, "$this"    # J

    const/4 v0, 0x0

    .line 37
    .local v0, "$i$f$getUnitDiscriminator":I
    long-to-int v1, p0

    and-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static final getValue-impl(J)J
    .locals 2
    .param p0, "$this"    # J

    .line 36
    const/4 v0, 0x1

    shr-long v0, p0, v0

    return-wide v0
.end method

.method public static hashCode-impl(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static final isFinite-impl(J)Z
    .locals 1
    .param p0, "$this"    # J

    .line 362
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static final isInMillis-impl(J)Z
    .locals 5
    .param p0, "$this"    # J

    .line 39
    move-wide v0, p0

    .local v0, "$this$iv":J
    const/4 v2, 0x0

    .line 1017
    .local v2, "$i$f$getUnitDiscriminator":I
    long-to-int v3, v0

    const/4 v4, 0x1

    and-int/lit8 v0, v3, 0x1

    .end local v0    # "$this$iv":J
    .end local v2    # "$i$f$getUnitDiscriminator":I
    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 39
    :goto_0
    return v4
.end method

.method private static final isInNanos-impl(J)Z
    .locals 5
    .param p0, "$this"    # J

    .line 38
    move-wide v0, p0

    .local v0, "$this$iv":J
    const/4 v2, 0x0

    .line 1016
    .local v2, "$i$f$getUnitDiscriminator":I
    long-to-int v3, v0

    const/4 v4, 0x1

    and-int/lit8 v0, v3, 0x1

    .end local v0    # "$this$iv":J
    .end local v2    # "$i$f$getUnitDiscriminator":I
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 38
    :goto_0
    return v4
.end method

.method public static final isInfinite-impl(J)Z
    .locals 2
    .param p0, "$this"    # J

    .line 359
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final isNegative-impl(J)Z
    .locals 2
    .param p0, "$this"    # J

    .line 353
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isPositive-impl(J)Z
    .locals 2
    .param p0, "$this"    # J

    .line 356
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final minus-LRDsOJo(JJ)J
    .locals 2
    .param p0, "$this"    # J
    .param p2, "other"    # J

    .line 234
    invoke-static {p2, p3}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final plus-LRDsOJo(JJ)J
    .locals 10
    .param p0, "$this"    # J
    .param p2, "other"    # J

    .line 190
    nop

    .line 191
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isFinite-impl(J)Z

    move-result v0

    if-nez v0, :cond_1

    xor-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Summing infinite durations of different signs yields an undefined result."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 193
    :cond_1
    :goto_0
    return-wide p0

    .line 197
    :cond_2
    invoke-static {p2, p3}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v0

    if-eqz v0, :cond_3

    return-wide p2

    .line 198
    :cond_3
    nop

    .line 200
    nop

    .line 201
    move-wide v0, p0

    .local v0, "$this$iv":J
    const/4 v2, 0x0

    .line 1019
    .local v2, "$i$f$getUnitDiscriminator":I
    long-to-int v3, v0

    and-int/lit8 v0, v3, 0x1

    .line 201
    .end local v0    # "$this$iv":J
    .end local v2    # "$i$f$getUnitDiscriminator":I
    move-wide v1, p2

    .local v1, "$this$iv":J
    const/4 v3, 0x0

    .line 1019
    .local v3, "$i$f$getUnitDiscriminator":I
    long-to-int v4, v1

    and-int/lit8 v1, v4, 0x1

    .end local v1    # "$this$iv":J
    .end local v3    # "$i$f$getUnitDiscriminator":I
    if-ne v0, v1, :cond_5

    .line 202
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 203
    .local v0, "result":J
    nop

    .line 204
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 205
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfNanosNormalized(J)J

    move-result-wide v2

    goto :goto_1

    .line 207
    :cond_4
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->access$durationOfMillisNormalized(J)J

    move-result-wide v2

    .line 203
    .end local v0    # "result":J
    goto :goto_1

    .line 210
    :cond_5
    invoke-static {p0, p1}, Lkotlin/time/Duration;->isInMillis-impl(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 211
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v3

    invoke-static {p2, p3}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v5

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJJ)J

    move-result-wide v2

    goto :goto_1

    .line 213
    :cond_6
    invoke-static {p2, p3}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v6

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v8

    move-wide v4, p0

    invoke-static/range {v4 .. v9}, Lkotlin/time/Duration;->addValuesMixedRanges-UwyO8pc(JJJ)J

    move-result-wide v2

    .line 200
    :goto_1
    return-wide v2
.end method

.method private static final precision-impl(JD)I
    .locals 3
    .param p0, "$this"    # J
    .param p2, "value"    # D

    .line 683
    nop

    .line 684
    const/4 v0, 0x1

    int-to-double v1, v0

    cmpg-double v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 685
    :cond_0
    const/16 v1, 0xa

    int-to-double v1, v1

    cmpg-double v1, p2, v1

    if-gez v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 686
    :cond_1
    const/16 v1, 0x64

    int-to-double v1, v1

    cmpg-double v1, p2, v1

    if-gez v1, :cond_2

    goto :goto_0

    .line 687
    :cond_2
    const/4 v0, 0x0

    .line 683
    :goto_0
    nop

    .line 688
    return v0
.end method

.method public static final times-UwyO8pc(JD)J
    .locals 6
    .param p0, "$this"    # J
    .param p2, "scale"    # D

    .line 289
    invoke-static {p2, p3}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    .line 290
    .local v0, "intScale":I
    int-to-double v1, v0

    cmpg-double v1, v1, p2

    if-nez v1, :cond_0

    .line 291
    invoke-static {p0, p1, v0}, Lkotlin/time/Duration;->times-UwyO8pc(JI)J

    move-result-wide v1

    return-wide v1

    .line 294
    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    .line 295
    .local v1, "unit":Ljava/util/concurrent/TimeUnit;
    invoke-static {p0, p1, v1}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v2

    mul-double/2addr v2, p2

    .line 296
    .local v2, "result":D
    invoke-static {v2, v3, v1}, Lkotlin/time/DurationKt;->toDuration(DLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    return-wide v4
.end method

.method public static final times-UwyO8pc(JI)J
    .locals 20
    .param p0, "$this"    # J
    .param p2, "scale"    # I

    .line 243
    move/from16 v0, p2

    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->isInfinite-impl(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    nop

    .line 245
    if-eqz v0, :cond_1

    .line 246
    if-lez v0, :cond_0

    move-wide/from16 v1, p0

    goto :goto_0

    .line 247
    :cond_0
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v1

    .line 244
    :goto_0
    return-wide v1

    .line 245
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Multiplying infinite duration by zero yields an undefined result."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 250
    :cond_2
    if-nez v0, :cond_3

    sget-wide v1, Lkotlin/time/Duration;->ZERO:J

    return-wide v1

    .line 252
    :cond_3
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v1

    .line 253
    .local v1, "value":J
    int-to-long v3, v0

    mul-long/2addr v3, v1

    .line 254
    .local v3, "result":J
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->isInNanos-impl(J)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 255
    const-wide/32 v10, 0x7fffffff

    const-wide/32 v12, -0x7fffffff

    cmp-long v5, v12, v1

    if-lez v5, :cond_4

    goto :goto_1

    :cond_4
    cmp-long v5, v10, v1

    if-ltz v5, :cond_5

    .line 257
    invoke-static {v3, v4}, Lkotlin/time/DurationKt;->access$durationOfNanos(J)J

    move-result-wide v5

    goto/16 :goto_4

    .line 259
    :cond_5
    :goto_1
    int-to-long v10, v0

    div-long v10, v3, v10

    cmp-long v5, v10, v1

    if-nez v5, :cond_6

    .line 260
    invoke-static {v3, v4}, Lkotlin/time/DurationKt;->access$durationOfNanosNormalized(J)J

    move-result-wide v5

    goto :goto_3

    .line 262
    :cond_6
    invoke-static {v1, v2}, Lkotlin/time/DurationKt;->access$nanosToMillis(J)J

    move-result-wide v10

    .line 263
    .local v10, "millis":J
    invoke-static {v10, v11}, Lkotlin/time/DurationKt;->access$millisToNanos(J)J

    move-result-wide v12

    sub-long v12, v1, v12

    .line 264
    .local v12, "remNanos":J
    int-to-long v14, v0

    mul-long/2addr v14, v10

    .line 265
    .local v14, "resultMillis":J
    int-to-long v6, v0

    mul-long/2addr v6, v12

    invoke-static {v6, v7}, Lkotlin/time/DurationKt;->access$nanosToMillis(J)J

    move-result-wide v5

    add-long/2addr v5, v14

    .line 266
    .local v5, "totalMillis":J
    int-to-long v8, v0

    div-long v7, v14, v8

    cmp-long v7, v7, v10

    if-nez v7, :cond_7

    xor-long v7, v5, v14

    const-wide/16 v18, 0x0

    cmp-long v7, v7, v18

    if-ltz v7, :cond_7

    .line 267
    new-instance v7, Lkotlin/ranges/LongRange;

    move-wide/from16 v16, v10

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    const-wide v10, -0x3fffffffffffffffL    # -2.0000000000000004

    .end local v10    # "millis":J
    .local v16, "millis":J
    invoke-direct {v7, v10, v11, v8, v9}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    check-cast v7, Lkotlin/ranges/ClosedRange;

    invoke-static {v5, v6, v7}, Lkotlin/ranges/RangesKt;->coerceIn(JLkotlin/ranges/ClosedRange;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v7

    move-wide v5, v7

    goto :goto_3

    .line 266
    .end local v16    # "millis":J
    .restart local v10    # "millis":J
    :cond_7
    move-wide/from16 v16, v10

    .line 269
    .end local v10    # "millis":J
    .restart local v16    # "millis":J
    invoke-static {v1, v2}, Lkotlin/math/MathKt;->getSign(J)I

    move-result v7

    invoke-static/range {p2 .. p2}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v8

    mul-int/2addr v7, v8

    if-lez v7, :cond_8

    sget-wide v7, Lkotlin/time/Duration;->INFINITE:J

    goto :goto_2

    :cond_8
    sget-wide v7, Lkotlin/time/Duration;->NEG_INFINITE:J

    :goto_2
    move-wide v5, v7

    .line 266
    .end local v5    # "totalMillis":J
    .end local v12    # "remNanos":J
    .end local v14    # "resultMillis":J
    .end local v16    # "millis":J
    :goto_3
    nop

    .line 259
    nop

    .line 255
    goto :goto_4

    .line 274
    :cond_9
    int-to-long v5, v0

    div-long v5, v3, v5

    cmp-long v5, v5, v1

    if-nez v5, :cond_a

    .line 275
    new-instance v5, Lkotlin/ranges/LongRange;

    const-wide v6, 0x3fffffffffffffffL    # 1.9999999999999998

    const-wide v8, -0x3fffffffffffffffL    # -2.0000000000000004

    invoke-direct {v5, v8, v9, v6, v7}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    check-cast v5, Lkotlin/ranges/ClosedRange;

    invoke-static {v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(JLkotlin/ranges/ClosedRange;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/time/DurationKt;->access$durationOfMillis(J)J

    move-result-wide v5

    goto :goto_4

    .line 277
    :cond_a
    invoke-static {v1, v2}, Lkotlin/math/MathKt;->getSign(J)I

    move-result v5

    invoke-static/range {p2 .. p2}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v6

    mul-int/2addr v5, v6

    if-lez v5, :cond_b

    sget-wide v5, Lkotlin/time/Duration;->INFINITE:J

    goto :goto_4

    :cond_b
    sget-wide v5, Lkotlin/time/Duration;->NEG_INFINITE:J

    .line 274
    :goto_4
    nop

    .line 254
    return-wide v5
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # J
    .param p2, "action"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$toComponents":I
    const-string v1, "action"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    nop

    .line 438
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this"    # J
    .param p2, "action"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$toComponents":I
    const-string v1, "action"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    nop

    .line 424
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v1}, Lkotlin/time/Duration;->toInt-impl(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this"    # J
    .param p2, "action"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$toComponents":I
    const-string v1, "action"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    nop

    .line 409
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v1}, Lkotlin/time/Duration;->toInt-impl(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final toComponents-impl(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this"    # J
    .param p2, "action"    # Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$toComponents":I
    const-string v1, "action"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    nop

    .line 393
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v1}, Lkotlin/time/Duration;->toInt-impl(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getHoursComponent-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, p2

    invoke-interface/range {v2 .. v7}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final toDouble-impl(JLjava/util/concurrent/TimeUnit;)D
    .locals 3
    .param p0, "$this"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    nop

    .line 471
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 472
    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 475
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lkotlin/time/DurationUnitKt;->convertDurationUnit(DLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    .line 470
    :goto_0
    return-wide v0
.end method

.method public static final toInt-impl(JLjava/util/concurrent/TimeUnit;)I
    .locals 7
    .param p0, "$this"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const/high16 v0, -0x80000000

    int-to-long v3, v0

    const v0, 0x7fffffff

    int-to-long v5, v0

    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static final toIsoString-impl(J)Ljava/lang/String;
    .locals 19
    .param p0, "$this"    # J

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$buildString":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 730
    .local v2, "$i$a$-buildString-Duration$toIsoString$1":I
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->isNegative-impl(J)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 731
    :cond_0
    const-string v3, "PT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-static/range {p0 .. p1}, Lkotlin/time/Duration;->getAbsoluteValue-UwyO8pc(J)J

    move-result-wide v3

    .local v3, "$this$iv":J
    const/4 v5, 0x0

    .line 1022
    .local v5, "$i$f$toComponents":I
    nop

    .line 1023
    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v6}, Lkotlin/time/Duration;->toInt-impl(JLjava/util/concurrent/TimeUnit;)I

    move-result v6

    .local v6, "hours":I
    invoke-static {v3, v4}, Lkotlin/time/Duration;->getMinutesComponent-impl(J)I

    move-result v7

    .local v7, "minutes":I
    invoke-static {v3, v4}, Lkotlin/time/Duration;->getSecondsComponent-impl(J)I

    move-result v8

    .local v8, "seconds":I
    invoke-static {v3, v4}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v9

    .local v9, "nanoseconds":I
    const/4 v10, 0x0

    .line 733
    .local v10, "$i$a$-toComponents-Duration$toIsoString$1$1":I
    const/4 v11, 0x1

    if-eqz v6, :cond_1

    move v13, v11

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    .line 734
    .local v13, "hasHours":Z
    :goto_0
    if-nez v8, :cond_3

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v14, v11

    .line 735
    .local v14, "hasSeconds":Z
    :goto_2
    if-nez v7, :cond_5

    if-eqz v14, :cond_4

    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    .line 736
    .local v11, "hasMinutes":Z
    :cond_5
    :goto_3
    if-eqz v13, :cond_6

    .line 737
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v12, 0x48

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 739
    :cond_6
    if-eqz v11, :cond_7

    .line 740
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v15, 0x4d

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 742
    :cond_7
    if-nez v14, :cond_9

    if-nez v13, :cond_8

    if-nez v11, :cond_8

    goto :goto_4

    :cond_8
    move/from16 v16, v2

    move-wide/from16 v17, v3

    goto :goto_6

    .line 743
    :cond_9
    :goto_4
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 744
    if-eqz v9, :cond_c

    .line 745
    const/16 v12, 0x2e

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 746
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x9

    move/from16 v16, v2

    .end local v2    # "$i$a$-buildString-Duration$toIsoString$1":I
    .local v16, "$i$a$-buildString-Duration$toIsoString$1":I
    const/16 v2, 0x30

    invoke-static {v12, v15, v2}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, "nss":Ljava/lang/String;
    nop

    .line 748
    const v12, 0xf4240

    rem-int v12, v9, v12

    const-string v15, "this.append(value, startIndex, endIndex)"

    if-nez v12, :cond_a

    const/4 v12, 0x3

    move-wide/from16 v17, v3

    .end local v3    # "$this$iv":J
    .local v17, "$this$iv":J
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 749
    .end local v17    # "$this$iv":J
    .restart local v3    # "$this$iv":J
    :cond_a
    move-wide/from16 v17, v3

    const/4 v4, 0x0

    .end local v3    # "$this$iv":J
    .restart local v17    # "$this$iv":J
    rem-int/lit16 v3, v9, 0x3e8

    if-nez v3, :cond_b

    const/4 v3, 0x6

    move-object v12, v2

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v1, v12, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 750
    :cond_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 744
    .end local v16    # "$i$a$-buildString-Duration$toIsoString$1":I
    .end local v17    # "$this$iv":J
    .local v2, "$i$a$-buildString-Duration$toIsoString$1":I
    .restart local v3    # "$this$iv":J
    :cond_c
    move/from16 v16, v2

    move-wide/from16 v17, v3

    .line 751
    .end local v2    # "$i$a$-buildString-Duration$toIsoString$1":I
    .end local v3    # "$this$iv":J
    .restart local v16    # "$i$a$-buildString-Duration$toIsoString$1":I
    .restart local v17    # "$this$iv":J
    :goto_5
    nop

    .line 753
    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 755
    .end local v11    # "hasMinutes":Z
    .end local v13    # "hasHours":Z
    .end local v14    # "hasSeconds":Z
    :goto_6
    nop

    .line 756
    .end local v5    # "$i$f$toComponents":I
    .end local v6    # "hours":I
    .end local v7    # "minutes":I
    .end local v8    # "seconds":I
    .end local v9    # "nanoseconds":I
    .end local v10    # "$i$a$-toComponents-Duration$toIsoString$1$1":I
    .end local v17    # "$this$iv":J
    nop

    .line 729
    .end local v1    # "$this$buildString":Ljava/lang/StringBuilder;
    .end local v16    # "$i$a$-buildString-Duration$toIsoString$1":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    return-object v0
.end method

.method public static final toLong-impl(JLjava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p0, "$this"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    nop

    .line 491
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 492
    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    .line 493
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getStorageUnit-impl(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lkotlin/time/DurationUnitKt;->convertDurationUnit(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 490
    :goto_0
    return-wide v0
.end method

.method public static final toLongMilliseconds-impl(J)J
    .locals 2
    .param p0, "$this"    # J
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeMilliseconds property instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.inWholeMilliseconds"
            imports = {}
        .end subannotation
    .end annotation

    .line 639
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final toLongNanoseconds-impl(J)J
    .locals 2
    .param p0, "$this"    # J
    .annotation runtime Lkotlin/Deprecated;
        message = "Use inWholeNanoseconds property instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.inWholeNanoseconds"
            imports = {}
        .end subannotation
    .end annotation

    .line 629
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeNanoseconds-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 10
    .param p0, "$this"    # J

    .line 654
    nop

    .line 655
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "0s"

    goto/16 :goto_2

    .line 656
    :cond_0
    sget-wide v0, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-string v0, "Infinity"

    goto/16 :goto_2

    .line 657
    :cond_1
    sget-wide v0, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    const-string v0, "-Infinity"

    goto/16 :goto_2

    .line 659
    :cond_2
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getAbsoluteValue-UwyO8pc(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    .line 660
    .local v0, "absNs":D
    const/4 v2, 0x0

    .line 661
    .local v2, "scientific":Z
    const/4 v3, 0x0

    .line 662
    .local v3, "maxDecimals":I
    nop

    .line 663
    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v4, v0, v4

    if-gez v4, :cond_3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v5, v4

    .line 1021
    .local v5, "it":Ljava/util/concurrent/TimeUnit;
    const/4 v6, 0x0

    .line 663
    .local v6, "$i$a$-also-Duration$toString$unit$1":I
    const/4 v2, 0x1

    .end local v5    # "it":Ljava/util/concurrent/TimeUnit;
    .end local v6    # "$i$a$-also-Duration$toString$unit$1":I
    goto/16 :goto_0

    .line 664
    :cond_3
    const/4 v4, 0x1

    int-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gez v4, :cond_4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v5, v4

    .line 1021
    .restart local v5    # "it":Ljava/util/concurrent/TimeUnit;
    const/4 v6, 0x0

    .line 664
    .local v6, "$i$a$-also-Duration$toString$unit$2":I
    const/4 v3, 0x7

    .end local v5    # "it":Ljava/util/concurrent/TimeUnit;
    .end local v6    # "$i$a$-also-Duration$toString$unit$2":I
    goto :goto_0

    .line 665
    :cond_4
    const-wide v4, 0x408f400000000000L    # 1000.0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 666
    :cond_5
    const-wide v4, 0x412e848000000000L    # 1000000.0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_6

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 667
    :cond_6
    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double v4, v0, v4

    if-gez v4, :cond_7

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 668
    :cond_7
    const-wide v4, 0x426d1a94a2000000L    # 1.0E12

    cmpg-double v4, v0, v4

    if-gez v4, :cond_8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 669
    :cond_8
    const-wide v4, 0x42cb48eb57e00000L    # 6.0E13

    cmpg-double v4, v0, v4

    if-gez v4, :cond_9

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 670
    :cond_9
    const-wide v4, 0x4329945ca2620000L    # 3.6E15

    cmpg-double v4, v0, v4

    if-gez v4, :cond_a

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 671
    :cond_a
    const-wide v4, 0x44476b344f2a78c0L    # 8.64E20

    cmpg-double v4, v0, v4

    if-gez v4, :cond_b

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 672
    :cond_b
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-object v5, v4

    .line 1021
    .restart local v5    # "it":Ljava/util/concurrent/TimeUnit;
    const/4 v6, 0x0

    .line 672
    .local v6, "$i$a$-also-Duration$toString$unit$3":I
    const/4 v2, 0x1

    .line 662
    .end local v5    # "it":Ljava/util/concurrent/TimeUnit;
    .end local v6    # "$i$a$-also-Duration$toString$unit$3":I
    :goto_0
    nop

    .line 674
    .local v4, "unit":Ljava/util/concurrent/TimeUnit;
    invoke-static {p0, p1, v4}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v5

    .line 675
    .local v5, "value":D
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    if-eqz v2, :cond_c

    invoke-static {v5, v6}, Lkotlin/time/FormatToDecimalsKt;->formatScientific(D)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 677
    :cond_c
    if-lez v3, :cond_d

    invoke-static {v5, v6, v3}, Lkotlin/time/FormatToDecimalsKt;->formatUpToDecimals(DI)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 678
    :cond_d
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {p0, p1, v8, v9}, Lkotlin/time/Duration;->precision-impl(JD)I

    move-result v8

    invoke-static {v5, v6, v8}, Lkotlin/time/FormatToDecimalsKt;->formatToExactDecimals(DI)Ljava/lang/String;

    move-result-object v8

    .line 675
    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 679
    invoke-static {v4}, Lkotlin/time/DurationUnitKt;->shortName(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 654
    .end local v0    # "absNs":D
    .end local v2    # "scientific":Z
    .end local v3    # "maxDecimals":I
    .end local v4    # "unit":Ljava/util/concurrent/TimeUnit;
    .end local v5    # "value":D
    :goto_2
    nop

    .line 681
    return-object v0
.end method

.method public static final toString-impl(JLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;
    .locals 7
    .param p0, "$this"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "decimals"    # I

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    if-ltz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 705
    invoke-static {p0, p1, p2}, Lkotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    .line 706
    .local v0, "number":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 707
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x42d6bcc41e900000L    # 1.0E14

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    const/16 v3, 0xc

    invoke-static {p3, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v3

    invoke-static {v0, v1, v3}, Lkotlin/time/FormatToDecimalsKt;->formatToExactDecimals(DI)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 709
    :cond_2
    invoke-static {v0, v1}, Lkotlin/time/FormatToDecimalsKt;->formatScientific(D)Ljava/lang/String;

    move-result-object v3

    .line 707
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 710
    invoke-static {p2}, Lkotlin/time/DurationUnitKt;->shortName(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 707
    return-object v2

    .line 1021
    .end local v0    # "number":D
    :cond_3
    const/4 v0, 0x0

    .line 704
    .local v0, "$i$a$-require-Duration$toString$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decimals must be not negative, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Duration$toString$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static synthetic toString-impl$default(JLjava/util/concurrent/TimeUnit;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 703
    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/time/Duration;->toString-impl(JLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unaryMinus-UwyO8pc(J)J
    .locals 6
    .param p0, "$this"    # J

    .line 181
    invoke-static {p0, p1}, Lkotlin/time/Duration;->getValue-impl(J)J

    move-result-wide v0

    neg-long v0, v0

    move-wide v2, p0

    .local v2, "$this$iv":J
    const/4 v4, 0x0

    .line 1018
    .local v4, "$i$f$getUnitDiscriminator":I
    long-to-int v5, v2

    and-int/lit8 v2, v5, 0x1

    .line 181
    .end local v2    # "$this$iv":J
    .end local v4    # "$i$f$getUnitDiscriminator":I
    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->access$durationOf(JI)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 34
    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(J)I

    move-result p1

    return p1
.end method

.method public compareTo-LRDsOJo(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1, p1, p2}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1, p1}, Lkotlin/time/Duration;->equals-impl(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Duration;->rawValue:J

    return-wide v0
.end method
