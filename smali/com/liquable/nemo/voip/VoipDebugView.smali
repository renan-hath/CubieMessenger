.class public Lcom/liquable/nemo/voip/VoipDebugView;
.super Landroid/widget/TextView;
.source "VoipDebugView.java"


# instance fields
.field private lastVoicePacketReadCount:I

.field private lastVoicePacketWriteCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    iput v0, p0, Lcom/liquable/nemo/voip/VoipDebugView;->lastVoicePacketReadCount:I

    .line 16
    iput v0, p0, Lcom/liquable/nemo/voip/VoipDebugView;->lastVoicePacketWriteCount:I

    .line 21
    invoke-direct {p0}, Lcom/liquable/nemo/voip/VoipDebugView;->setViewProperties()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v0, p0, Lcom/liquable/nemo/voip/VoipDebugView;->lastVoicePacketReadCount:I

    .line 16
    iput v0, p0, Lcom/liquable/nemo/voip/VoipDebugView;->lastVoicePacketWriteCount:I

    .line 26
    invoke-direct {p0}, Lcom/liquable/nemo/voip/VoipDebugView;->setViewProperties()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, -0x1

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput v0, p0, Lcom/liquable/nemo/voip/VoipDebugView;->lastVoicePacketReadCount:I

    .line 16
    iput v0, p0, Lcom/liquable/nemo/voip/VoipDebugView;->lastVoicePacketWriteCount:I

    .line 31
    invoke-direct {p0}, Lcom/liquable/nemo/voip/VoipDebugView;->setViewProperties()V

    .line 32
    return-void
.end method

.method private decorateRedIf(ZLjava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p1, "condition"    # Z
    .param p2, "builder"    # Ljava/lang/StringBuilder;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    const-string/jumbo v0, "<font color =\"#FF0000\">"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v0, "</font>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setViewProperties()V
    .locals 2

    .prologue
    const/16 v1, 0x44

    .line 47
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/VoipDebugView;->setTextSize(F)V

    .line 48
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/VoipDebugView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 49
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/VoipDebugView;->setTextColor(I)V

    .line 50
    const/16 v0, 0xaa

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/VoipDebugView;->setBackgroundColor(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public updateReport(Lcom/liquable/nemo/voip/session/VoipSessionReport;)V
    .locals 9
    .param p1, "report"    # Lcom/liquable/nemo/voip/session/VoipSessionReport;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v1, "format":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "host name...... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->getHostName()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x19

    invoke-static {v2, v5}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo v2, "<br/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo v2, "ping pong...... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->getPingPongDuration()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    cmp-long v2, v5, v7

    if-lez v2, :cond_0

    move v2, v3

    :goto_0
    const-string/jumbo v5, "%4d"

    invoke-direct {p0, v2, v1, v5}, Lcom/liquable/nemo/voip/VoipDebugView;->decorateRedIf(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v2, " ms<br/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v2, "packet drop.... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->getPacketDropPercent()F

    move-result v2

    float-to-double v5, v2

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v2, v5, v7

    if-lez v2, :cond_1

    move v2, v3

    :goto_1
    const-string/jumbo v5, "%4.1f"

    invoke-direct {p0, v2, v1, v5}, Lcom/liquable/nemo/voip/VoipDebugView;->decorateRedIf(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v2, " %%<br/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string/jumbo v2, "packet read.... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v2, p0, Lcom/liquable/nemo/voip/VoipDebugView;->lastVoicePacketReadCount:I

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->getReadVoicePacketCount()I

    move-result v5

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_2
    const-string/jumbo v5, "%4d"

    invoke-direct {p0, v2, v1, v5}, Lcom/liquable/nemo/voip/VoipDebugView;->decorateRedIf(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v2, " count<br/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v2, "packet write... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v2, p0, Lcom/liquable/nemo/voip/VoipDebugView;->lastVoicePacketWriteCount:I

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->getWriteVoicePacketCount()I

    move-result v5

    if-ne v2, v5, :cond_3

    move v2, v3

    :goto_3
    const-string/jumbo v5, "%4d"

    invoke-direct {p0, v2, v1, v5}, Lcom/liquable/nemo/voip/VoipDebugView;->decorateRedIf(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v2, " count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 77
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->getPingPongDuration()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    .line 78
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->getPacketDropPercent()F

    move-result v4

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x2

    .line 79
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->getReadVoicePacketCount()I

    move-result v4

    rem-int/lit16 v4, v4, 0x2710

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x3

    .line 80
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->getWriteVoicePacketCount()I

    move-result v4

    rem-int/lit16 v4, v4, 0x2710

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    .line 76
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "debug":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/VoipDebugView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->getReadVoicePacketCount()I

    move-result v2

    iput v2, p0, Lcom/liquable/nemo/voip/VoipDebugView;->lastVoicePacketReadCount:I

    .line 85
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->getWriteVoicePacketCount()I

    move-result v2

    iput v2, p0, Lcom/liquable/nemo/voip/VoipDebugView;->lastVoicePacketWriteCount:I

    .line 86
    return-void

    .end local v0    # "debug":Ljava/lang/String;
    :cond_0
    move v2, v4

    .line 61
    goto/16 :goto_0

    :cond_1
    move v2, v4

    .line 65
    goto/16 :goto_1

    :cond_2
    move v2, v4

    .line 69
    goto :goto_2

    :cond_3
    move v2, v4

    .line 73
    goto :goto_3
.end method
