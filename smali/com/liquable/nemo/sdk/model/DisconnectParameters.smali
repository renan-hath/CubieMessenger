.class public Lcom/liquable/nemo/sdk/model/DisconnectParameters;
.super Ljava/lang/Object;
.source "DisconnectParameters.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final KEY_APP_KEY:Ljava/lang/String; = "com.cubie.openapi.sdk.model.DisconnectParameters.appKey"

.field private static final KEY_APP_UNIQUE_DEVICE_ID:Ljava/lang/String; = "com.cubie.openapi.sdk.model.DisconnectParameters.appUniqueDeviceId"

.field private static final KEY_UID:Ljava/lang/String; = "com.cubie.openapi.sdk.model.DisconnectParameters.uid"

.field private static final serialVersionUID:J = 0x1dc5cc418b28cf8eL


# instance fields
.field private final appKey:Ljava/lang/String;

.field private final appUniqueDeviceId:Ljava/lang/String;

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "myUid"    # Ljava/lang/String;
    .param p3, "appUniqueDeviceId"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->appKey:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->uid:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->appUniqueDeviceId:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/liquable/nemo/sdk/model/DisconnectParameters;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 9
    new-instance v0, Lcom/liquable/nemo/sdk/model/DisconnectParameters;

    const-string/jumbo v1, "com.cubie.openapi.sdk.model.DisconnectParameters.appKey"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.cubie.openapi.sdk.model.DisconnectParameters.uid"

    .line 10
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.cubie.openapi.sdk.model.DisconnectParameters.appUniqueDeviceId"

    .line 11
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/sdk/model/DisconnectParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppUniqueDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->appUniqueDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "com.cubie.openapi.sdk.model.DisconnectParameters.appKey"

    iget-object v2, p0, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v1, "com.cubie.openapi.sdk.model.DisconnectParameters.uid"

    iget-object v2, p0, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v1, "com.cubie.openapi.sdk.model.DisconnectParameters.appUniqueDeviceId"

    iget-object v2, p0, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->appUniqueDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DisconnectParameters [appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appUniqueDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sdk/model/DisconnectParameters;->appUniqueDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
