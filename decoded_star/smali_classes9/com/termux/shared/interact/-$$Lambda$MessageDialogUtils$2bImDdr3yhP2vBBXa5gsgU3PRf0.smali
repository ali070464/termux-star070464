.class public final synthetic Lcom/termux/shared/interact/-$$Lambda$MessageDialogUtils$2bImDdr3yhP2vBBXa5gsgU3PRf0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/termux/shared/interact/-$$Lambda$MessageDialogUtils$2bImDdr3yhP2vBBXa5gsgU3PRf0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/termux/shared/interact/-$$Lambda$MessageDialogUtils$2bImDdr3yhP2vBBXa5gsgU3PRf0;

    invoke-direct {v0}, Lcom/termux/shared/interact/-$$Lambda$MessageDialogUtils$2bImDdr3yhP2vBBXa5gsgU3PRf0;-><init>()V

    sput-object v0, Lcom/termux/shared/interact/-$$Lambda$MessageDialogUtils$2bImDdr3yhP2vBBXa5gsgU3PRf0;->INSTANCE:Lcom/termux/shared/interact/-$$Lambda$MessageDialogUtils$2bImDdr3yhP2vBBXa5gsgU3PRf0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p1}, Lcom/termux/shared/interact/MessageDialogUtils;->lambda$exitAppWithErrorMessage$0(Landroid/content/DialogInterface;)V

    return-void
.end method
