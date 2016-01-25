.class public Lcom/liquable/nemo/model/AdwaysListCampaignException;
.super Lcom/liquable/nemo/model/DomainException;
.source "AdwaysListCampaignException.java"


# annotations
.annotation runtime Lcom/liquable/nemo/rpc/LogAsWarn;
.end annotation

.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2c5b08a7612ca6baL


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/liquable/nemo/model/DomainException;-><init>()V

    return-void
.end method


# virtual methods
.method public getI18nKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "adways_list_campaign_failed"

    return-object v0
.end method
