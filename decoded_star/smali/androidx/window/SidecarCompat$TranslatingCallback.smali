.class public final Landroidx/window/SidecarCompat$TranslatingCallback;
.super Ljava/lang/Object;
.source "SidecarCompat.kt"

# interfaces
.implements Landroidx/window/sidecar/SidecarInterface$SidecarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/SidecarCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TranslatingCallback"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSidecarCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SidecarCompat.kt\nandroidx/window/SidecarCompat$TranslatingCallback\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,421:1\n1849#2:422\n1850#2:424\n1#3:423\n*S KotlinDebug\n*F\n+ 1 SidecarCompat.kt\nandroidx/window/SidecarCompat$TranslatingCallback\n*L\n294#1:422\n294#1:424\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0017J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0017\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/window/SidecarCompat$TranslatingCallback;",
        "Landroidx/window/sidecar/SidecarInterface$SidecarCallback;",
        "(Landroidx/window/SidecarCompat;)V",
        "onDeviceStateChanged",
        "",
        "newDeviceState",
        "Landroidx/window/sidecar/SidecarDeviceState;",
        "onWindowLayoutChanged",
        "windowToken",
        "Landroid/os/IBinder;",
        "newLayout",
        "Landroidx/window/sidecar/SidecarWindowLayoutInfo;",
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


# instance fields
.field final synthetic this$0:Landroidx/window/SidecarCompat;


# direct methods
.method public constructor <init>(Landroidx/window/SidecarCompat;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/window/SidecarCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iput-object p1, p0, Landroidx/window/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/SidecarCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceStateChanged(Landroidx/window/sidecar/SidecarDeviceState;)V
    .locals 11
    .param p1, "newDeviceState"    # Landroidx/window/sidecar/SidecarDeviceState;

    const-string v0, "newDeviceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Landroidx/window/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/SidecarCompat;

    invoke-static {v0}, Landroidx/window/SidecarCompat;->access$getWindowListenerRegisteredContexts$p(Landroidx/window/SidecarCompat;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-object v1, p0, Landroidx/window/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/SidecarCompat;

    const/4 v2, 0x0

    .line 422
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroid/app/Activity;

    .local v5, "activity":Landroid/app/Activity;
    const/4 v6, 0x0

    .line 295
    .local v6, "$i$a$-forEach-SidecarCompat$TranslatingCallback$onDeviceStateChanged$1":I
    invoke-static {v5}, Landroidx/window/ActivityExtKt;->getActivityWindowToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v7

    .line 296
    nop

    .line 295
    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 296
    :goto_1
    goto :goto_2

    :cond_0
    nop

    .line 423
    .local v7, "windowToken":Landroid/os/IBinder;
    const/4 v9, 0x0

    .line 296
    .local v9, "$i$a$-let-SidecarCompat$TranslatingCallback$onDeviceStateChanged$1$layoutInfo$1":I
    invoke-virtual {v1}, Landroidx/window/SidecarCompat;->getSidecar()Landroidx/window/sidecar/SidecarInterface;

    move-result-object v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v10, v7}, Landroidx/window/sidecar/SidecarInterface;->getWindowLayoutInfo(Landroid/os/IBinder;)Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    move-result-object v8

    goto :goto_1

    .line 295
    .end local v7    # "windowToken":Landroid/os/IBinder;
    .end local v9    # "$i$a$-let-SidecarCompat$TranslatingCallback$onDeviceStateChanged$1$layoutInfo$1":I
    :goto_2
    move-object v7, v8

    .line 297
    .local v7, "layoutInfo":Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    invoke-static {v1}, Landroidx/window/SidecarCompat;->access$getExtensionCallback$p(Landroidx/window/SidecarCompat;)Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_3

    .line 298
    :cond_2
    nop

    .line 299
    invoke-static {v1}, Landroidx/window/SidecarCompat;->access$getSidecarAdapter$p(Landroidx/window/SidecarCompat;)Landroidx/window/SidecarAdapter;

    move-result-object v9

    invoke-virtual {v9, v7, p1}, Landroidx/window/SidecarAdapter;->translate(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/WindowLayoutInfo;

    move-result-object v9

    .line 297
    invoke-interface {v8, v5, v9}, Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;->onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/WindowLayoutInfo;)V

    .line 301
    :goto_3
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "activity":Landroid/app/Activity;
    .end local v6    # "$i$a$-forEach-SidecarCompat$TranslatingCallback$onDeviceStateChanged$1":I
    .end local v7    # "layoutInfo":Landroidx/window/sidecar/SidecarWindowLayoutInfo;
    goto :goto_0

    .line 424
    :cond_3
    nop

    .line 302
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method

.method public onWindowLayoutChanged(Landroid/os/IBinder;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)V
    .locals 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "newLayout"    # Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    const-string v0, "windowToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Landroidx/window/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/SidecarCompat;

    invoke-static {v0}, Landroidx/window/SidecarCompat;->access$getWindowListenerRegisteredContexts$p(Landroidx/window/SidecarCompat;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 310
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 312
    nop

    .line 313
    nop

    .line 311
    const-string v1, "SidecarCompat"

    const-string v2, "Unable to resolve activity from window token. Missing a call to #onWindowLayoutChangeListenerAdded()?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 318
    :cond_0
    iget-object v1, p0, Landroidx/window/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/SidecarCompat;

    invoke-static {v1}, Landroidx/window/SidecarCompat;->access$getSidecarAdapter$p(Landroidx/window/SidecarCompat;)Landroidx/window/SidecarAdapter;

    move-result-object v1

    .line 319
    nop

    .line 320
    iget-object v2, p0, Landroidx/window/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/SidecarCompat;

    invoke-virtual {v2}, Landroidx/window/SidecarCompat;->getSidecar()Landroidx/window/sidecar/SidecarInterface;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    new-instance v2, Landroidx/window/sidecar/SidecarDeviceState;

    invoke-direct {v2}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    .line 318
    :cond_2
    invoke-virtual {v1, p2, v2}, Landroidx/window/SidecarAdapter;->translate(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/WindowLayoutInfo;

    move-result-object v1

    .line 322
    .local v1, "layoutInfo":Landroidx/window/WindowLayoutInfo;
    iget-object v2, p0, Landroidx/window/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/SidecarCompat;

    invoke-static {v2}, Landroidx/window/SidecarCompat;->access$getExtensionCallback$p(Landroidx/window/SidecarCompat;)Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v2, v0, v1}, Landroidx/window/ExtensionInterfaceCompat$ExtensionCallbackInterface;->onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/WindowLayoutInfo;)V

    .line 323
    :goto_1
    return-void
.end method
