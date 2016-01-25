.class public final Lcom/aviary/android/feather/library/plugins/UpdateType;
.super Ljava/lang/Object;
.source "UpdateType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mPackageVersionCode:I

.field private final mPluginType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "packageVersionCode"    # I
    .param p3, "pluginType"    # I
    .param p4, "action"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/aviary/android/feather/library/plugins/UpdateType;->mPackageName:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/aviary/android/feather/library/plugins/UpdateType;->mPluginType:I

    .line 24
    iput-object p4, p0, Lcom/aviary/android/feather/library/plugins/UpdateType;->mAction:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/aviary/android/feather/library/plugins/UpdateType;->mPackageVersionCode:I

    .line 26
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/UpdateType;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aviary/android/feather/library/plugins/UpdateType;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageVersionCode()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/UpdateType;->mPackageVersionCode:I

    return v0
.end method

.method public getPluginType()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/aviary/android/feather/library/plugins/UpdateType;->mPluginType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UpdateType{ package: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aviary/android/feather/library/plugins/UpdateType;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aviary/android/feather/library/plugins/UpdateType;->mPackageVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/library/plugins/UpdateType;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aviary/android/feather/library/plugins/UpdateType;->mPluginType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
