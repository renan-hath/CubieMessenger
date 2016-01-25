.class Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
.super Ljava/lang/Object;
.source "BordersPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/BordersPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EffectPack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;
    }
.end annotation


# instance fields
.field index:I

.field mError:Ljava/lang/String;

.field mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mPackageName:Ljava/lang/CharSequence;

.field mPluginRef:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

.field mStatus:I

.field mTitle:Ljava/lang/CharSequence;

.field mType:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

.field mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;)V
    .locals 1
    .param p1, "type"    # Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    .prologue
    const/4 v0, 0x0

    .line 1697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1693
    iput v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->size:I

    .line 1694
    iput v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->index:I

    .line 1698
    iput-object p1, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mType:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    .line 1699
    const/4 v0, 0x1

    iput v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->size:I

    .line 1700
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mStatus:I

    .line 1701
    return-void
.end method

.method public constructor <init>(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;ILjava/lang/String;Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;)V
    .locals 1
    .param p1, "type"    # Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;
    .param p2, "packageName"    # Ljava/lang/CharSequence;
    .param p3, "pakageTitle"    # Ljava/lang/CharSequence;
    .param p6, "status"    # I
    .param p7, "errorMsg"    # Ljava/lang/String;
    .param p8, "plugin"    # Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1710
    .local p4, "values":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p5, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;-><init>(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;)V

    .line 1711
    iput-object p2, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mPackageName:Ljava/lang/CharSequence;

    .line 1712
    iput p6, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mStatus:I

    .line 1713
    iput-object p3, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mTitle:Ljava/lang/CharSequence;

    .line 1714
    iput-object p8, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mPluginRef:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    .line 1715
    iput-object p4, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mValues:Ljava/util/List;

    .line 1716
    iput-object p5, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mIds:Ljava/util/List;

    .line 1717
    iput-object p7, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mError:Ljava/lang/String;

    .line 1719
    if-eqz p4, :cond_0

    .line 1720
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->size:I

    .line 1724
    :goto_0
    return-void

    .line 1722
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->size:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 1704
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;-><init>(Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;)V

    .line 1705
    iput-object p2, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mTitle:Ljava/lang/CharSequence;

    .line 1706
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mPluginRef:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    .line 1758
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1759
    return-void
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 1731
    iget v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->index:I

    return v0
.end method

.method public getItemAt(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mValues:Ljava/util/List;

    iget v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->index:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getItemIdAt(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mIds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mIds:Ljava/util/List;

    iget v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->index:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1744
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getLabelAt(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->mValues:Ljava/util/List;

    iget v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->index:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1735
    iput p1, p0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;->index:I

    .line 1736
    return-void
.end method
