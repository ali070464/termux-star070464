.class final Landroidx/window/EmptyDecorator;
.super Ljava/lang/Object;
.source "WindowInfoRepo.kt"

# interfaces
.implements Landroidx/window/WindowInfoRepoDecorator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/window/EmptyDecorator;",
        "Landroidx/window/WindowInfoRepoDecorator;",
        "()V",
        "decorate",
        "Landroidx/window/WindowInfoRepo;",
        "repo",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/window/EmptyDecorator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/EmptyDecorator;

    invoke-direct {v0}, Landroidx/window/EmptyDecorator;-><init>()V

    sput-object v0, Landroidx/window/EmptyDecorator;->INSTANCE:Landroidx/window/EmptyDecorator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decorate(Landroidx/window/WindowInfoRepo;)Landroidx/window/WindowInfoRepo;
    .locals 1
    .param p1, "repo"    # Landroidx/window/WindowInfoRepo;

    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    return-object p1
.end method
