.class public final Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;
.super Ljava/lang/Object;
.source "MoaLitePack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;
    }
.end annotation


# instance fields
.field private codename:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;",
            ">;"
        }
    .end annotation
.end field

.field private minVersion:Ljava/lang/String;

.field private packType:Ljava/lang/String;

.field private packVersionCode:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->items:Ljava/util/List;

    .line 184
    return-void
.end method


# virtual methods
.method addItem(Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;)V
    .locals 1
    .param p1, "item"    # Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public final getCodename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->codename:Ljava/lang/String;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getItemAt(I)Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack$MoaLiteItem;

    return-object v0
.end method

.method public final getMinVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->minVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->packType:Ljava/lang/String;

    return-object v0
.end method

.method public getPackTypeInt()I
    .locals 2

    .prologue
    .line 251
    const-string/jumbo v0, "effect"

    iget-object v1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->packType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x1

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPackVersionCode()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->packVersionCode:I

    return v0
.end method

.method public final getProclistVersion()Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->getMinVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;->fromString(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteProclistVersion;

    move-result-object v0

    return-object v0
.end method

.method setCodename(Ljava/lang/String;)V
    .locals 0
    .param p1, "codename"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->codename:Ljava/lang/String;

    .line 212
    return-void
.end method

.method setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->displayName:Ljava/lang/String;

    .line 216
    return-void
.end method

.method setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->identifier:Ljava/lang/String;

    .line 208
    return-void
.end method

.method setMinVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "minVersion"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->minVersion:Ljava/lang/String;

    .line 220
    return-void
.end method

.method setPackType(Ljava/lang/String;)V
    .locals 0
    .param p1, "packType"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->packType:Ljava/lang/String;

    .line 224
    return-void
.end method

.method setPackVersionCode(I)V
    .locals 0
    .param p1, "packVersion"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->packVersionCode:I

    .line 228
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "EffectPack[identifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", codeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->codename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->packType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->packVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", minVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->minVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valid()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->identifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->minVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->packVersionCode:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLitePack;->packType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
