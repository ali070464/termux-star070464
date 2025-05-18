.class Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;
.super Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
.source "ExtraKeysConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 173
    invoke-direct {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;-><init>()V

    .line 174
    const-string v0, "ESCAPE"

    const-string v1, "ESC"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "CONTROL"

    const-string v1, "CTRL"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "SHFT"

    const-string v1, "SHIFT"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "RETURN"

    const-string v1, "ENTER"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "FUNCTION"

    const-string v1, "FN"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "LT"

    const-string v1, "LEFT"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "RT"

    const-string v1, "RIGHT"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "DN"

    const-string v1, "DOWN"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "PAGEUP"

    const-string v1, "PGUP"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "PAGE_UP"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v0, "PAGE UP"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v0, "PAGE-UP"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v0, "PAGEDOWN"

    const-string v1, "PGDN"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v0, "PAGE_DOWN"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v0, "PAGE-DOWN"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v0, "DELETE"

    const-string v1, "DEL"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v0, "BACKSPACE"

    const-string v1, "BKSP"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "BACKSLASH"

    const-string v1, "\\"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v0, "QUOTE"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "APOSTROPHE"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method
