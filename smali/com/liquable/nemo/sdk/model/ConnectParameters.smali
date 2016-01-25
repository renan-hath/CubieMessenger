.class public Lcom/liquable/nemo/sdk/model/ConnectParameters;
.super Ljava/lang/Object;
.source "ConnectParameters.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final KEY_APP_KEY:Ljava/lang/String; = "com.cubie.openapi.sdk.model.ConnectParameters.appKey"

.field private static final KEY_APP_UNIQUE_DEVICE_ID:Ljava/lang/String; = "com.cubie.openapi.sdk.model.ConnectParameters.appUniqueDeviceId"

.field private static final serialVersionUID:J = 0x1dc5cc418b28cf8eL


# instance fields
.field private final appKey:Ljava/lang/String;

.field private final appUniqueDeviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "appUniqueDeviceId"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/liquable/nemo/sdk/model/ConnectParameters;->appKey:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/liquable/nemo/sdk/model/ConnectParameters;->appUniqueDeviceId:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/liquable/nemo/sdk/model/ConnectParameters;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 9
    new-instance v0, Lcom/liquable/nemo/sdk/model/ConnectParameters;

    const-string/jumbo v1, "com.cubie.openapi.sdk.model.ConnectParameters.appKey"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.cubie.openapi.sdk.model.ConnectParameters.appUniqueDeviceId"

    .line 10
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/sdk/model/ConnectParameters;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/sdk/model/ConnectParameters;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppUniqueDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/sdk/model/ConnectParameters;->appUniqueDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "com.cubie.openapi.sdk.model.ConnectParameters.appKey"

    iget-object v2, p0, Lcom/liquable/nemo/sdk/model/ConnectParameters;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v1, "com.cubie.openapi.sdk.model.ConnectParameters.appUniqueDeviceId"

    iget-object v2, p0, Lcom/liquable/nemo/sdk/model/ConnectParameters;->appUniqueDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConnectParameters [appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sdk/model/ConnectParameters;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appUniqueDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sdk/model/ConnectParameters;->appUniqueDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
