.class public Lcom/liquable/nemo/util/CubieProfileUrl$Part;
.super Ljava/lang/Object;
.source "CubieProfileUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/util/CubieProfileUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Part"
.end annotation


# instance fields
.field private final cubieId:Ljava/lang/String;

.field private final sig:Ljava/lang/String;

.field private final trackingKey:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cubieId"    # Ljava/lang/String;
    .param p2, "sig"    # Ljava/lang/String;
    .param p3, "trackingKey"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/liquable/nemo/util/CubieProfileUrl$Part;->cubieId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/liquable/nemo/util/CubieProfileUrl$Part;->sig:Ljava/lang/String;

    .line 29
    invoke-static {p3}, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->from(Ljava/lang/String;)Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/util/CubieProfileUrl$Part;->trackingKey:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 30
    return-void
.end method


# virtual methods
.method public getCubieId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/util/CubieProfileUrl$Part;->cubieId:Ljava/lang/String;

    return-object v0
.end method

.method public getSig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/util/CubieProfileUrl$Part;->sig:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingKey()Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/util/CubieProfileUrl$Part;->trackingKey:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    return-object v0
.end method
