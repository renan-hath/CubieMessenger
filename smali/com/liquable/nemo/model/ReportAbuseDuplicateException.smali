.class public Lcom/liquable/nemo/model/ReportAbuseDuplicateException;
.super Lcom/liquable/nemo/model/DomainException;
.source "ReportAbuseDuplicateException.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5891b12e668172aaL


# instance fields
.field private final artworkId:Ljava/lang/String;

.field private final reporterUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reporterUid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "reporterUid"
        .end annotation
    .end param
    .param p2, "artworkId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "artworkId"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/liquable/nemo/model/DomainException;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->reporterUid:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->artworkId:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    if-ne p0, p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v1

    .line 27
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 31
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 33
    check-cast v0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;

    .line 34
    .local v0, "other":Lcom/liquable/nemo/model/ReportAbuseDuplicateException;
    iget-object v3, p0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->artworkId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 35
    iget-object v3, v0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->artworkId:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 36
    goto :goto_0

    .line 38
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->artworkId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->artworkId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 39
    goto :goto_0

    .line 41
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->reporterUid:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 42
    iget-object v3, v0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->reporterUid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 43
    goto :goto_0

    .line 45
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->reporterUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->reporterUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 46
    goto :goto_0
.end method

.method public getArtworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->artworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getI18nKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "artwork_report_abuse_duplicate"

    return-object v0
.end method

.method public getReporterUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->reporterUid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 66
    const/16 v0, 0x1f

    .line 67
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 68
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->artworkId:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 69
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->reporterUid:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 70
    return v1

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->artworkId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->reporterUid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ReportAbuseDuplicateException [reporterUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->reporterUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", artworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/ReportAbuseDuplicateException;->artworkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
