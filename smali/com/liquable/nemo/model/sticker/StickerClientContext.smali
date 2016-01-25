.class public Lcom/liquable/nemo/model/sticker/StickerClientContext;
.super Ljava/lang/Object;
.source "StickerClientContext.java"


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "stickerVersion"    # I
    .param p2, "imagePathEndDecoration"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerClientContext;->map:Ljava/util/Map;

    .line 23
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerClientContext;->map:Ljava/util/Map;

    const-string/jumbo v1, "stickerVersion"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerClientContext;->map:Ljava/util/Map;

    const-string/jumbo v1, "imagePathEndDecoration"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public setClientVersion(Lcom/liquable/nemo/NemoVersion;)V
    .locals 3
    .param p1, "nemoVersion"    # Lcom/liquable/nemo/NemoVersion;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerClientContext;->map:Ljava/util/Map;

    const-string/jumbo v1, "clientVersion"

    invoke-virtual {p1}, Lcom/liquable/nemo/NemoVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public setCountryCodeISO3166(Ljava/lang/String;)V
    .locals 2
    .param p1, "countryCodeISO3166"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerClientContext;->map:Ljava/util/Map;

    const-string/jumbo v1, "country"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 2
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerClientContext;->map:Ljava/util/Map;

    const-string/jumbo v1, "currency"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public setIPAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerClientContext;->map:Ljava/util/Map;

    const-string/jumbo v1, "ip"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public setInternationalCallingCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "internationalCallingCode"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerClientContext;->map:Ljava/util/Map;

    const-string/jumbo v1, "icc"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 2
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerClientContext;->map:Ljava/util/Map;

    const-string/jumbo v1, "locale"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public setMobileCountryCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "mobileCountryCode"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerClientContext;->map:Ljava/util/Map;

    const-string/jumbo v1, "mcc"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public setMobileNetworkCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "mobileNetworkCode"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerClientContext;->map:Ljava/util/Map;

    const-string/jumbo v1, "mnc"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public setPlatform(Lcom/liquable/util/ClientPlatform;)V
    .locals 3
    .param p1, "platform"    # Lcom/liquable/util/ClientPlatform;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerClientContext;->map:Ljava/util/Map;

    const-string/jumbo v1, "platform"

    invoke-virtual {p1}, Lcom/liquable/util/ClientPlatform;->getClientValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public setPreferences(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "preferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerClientContext;->map:Ljava/util/Map;

    const-string/jumbo v1, "pref"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public setRevisionForDev(J)V
    .locals 3
    .param p1, "revisionForDev"    # J

    .prologue
    .line 105
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerClientContext;->map:Ljava/util/Map;

    const-string/jumbo v1, "revisionForDev"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerClientContext;->map:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
