.class public Lcom/termux/shared/models/ReportInfo;
.super Ljava/lang/Object;
.source "ReportInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final addReportInfoHeaderToMarkdown:Z

.field public final reportSaveFileLabel:Ljava/lang/String;

.field public final reportSaveFilePath:Ljava/lang/String;

.field public reportString:Ljava/lang/String;

.field public reportStringPrefix:Ljava/lang/String;

.field public reportStringSuffix:Ljava/lang/String;

.field public final reportTimestamp:Ljava/lang/String;

.field public final reportTitle:Ljava/lang/String;

.field public final sender:Ljava/lang/String;

.field public final userAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userAction"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "reportTitle"    # Ljava/lang/String;
    .param p4, "reportStringPrefix"    # Ljava/lang/String;
    .param p5, "reportString"    # Ljava/lang/String;
    .param p6, "reportStringSuffix"    # Ljava/lang/String;
    .param p7, "addReportInfoHeaderToMarkdown"    # Z
    .param p8, "reportSaveFileLabel"    # Ljava/lang/String;
    .param p9, "reportSaveFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userAction",
            "sender",
            "reportTitle",
            "reportStringPrefix",
            "reportString",
            "reportStringSuffix",
            "addReportInfoHeaderToMarkdown",
            "reportSaveFileLabel",
            "reportSaveFilePath"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/termux/shared/models/ReportInfo;->userAction:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/termux/shared/models/ReportInfo;->sender:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/termux/shared/models/ReportInfo;->reportStringPrefix:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/termux/shared/models/ReportInfo;->reportString:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lcom/termux/shared/models/ReportInfo;->reportStringSuffix:Ljava/lang/String;

    .line 46
    iput-boolean p7, p0, Lcom/termux/shared/models/ReportInfo;->addReportInfoHeaderToMarkdown:Z

    .line 47
    iput-object p8, p0, Lcom/termux/shared/models/ReportInfo;->reportSaveFileLabel:Ljava/lang/String;

    .line 48
    iput-object p9, p0, Lcom/termux/shared/models/ReportInfo;->reportSaveFilePath:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/termux/shared/termux/AndroidUtils;->getCurrentMilliSecondUTCTimeStamp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/models/ReportInfo;->reportTimestamp:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "reportInfo"    # Lcom/termux/shared/models/ReportInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reportInfo"
        }
    .end annotation

    .line 59
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/termux/shared/models/ReportInfo;->addReportInfoHeaderToMarkdown:Z

    if-eqz v1, :cond_1

    .line 64
    const-string v1, "## Report Info\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/shared/models/ReportInfo;->userAction:Ljava/lang/String;

    const-string v4, "User Action"

    const-string v5, "-"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/shared/models/ReportInfo;->sender:Ljava/lang/String;

    const-string v4, "Sender"

    invoke-static {v4, v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/shared/models/ReportInfo;->reportTimestamp:Ljava/lang/String;

    const-string v3, "Report Timestamp"

    invoke-static {v3, v2, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, "\n##\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/termux/shared/models/ReportInfo;->reportString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
