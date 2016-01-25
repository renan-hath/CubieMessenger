.class abstract Lcom/aviary/android/feather/effects/AbstractOptionPanel;
.super Lcom/aviary/android/feather/effects/AbstractPanel;
.source "AbstractOptionPanel.java"

# interfaces
.implements Lcom/aviary/android/feather/effects/AbstractPanel$OptionPanel;


# instance fields
.field protected mOptionView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V
    .locals 0
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected varargs disableHapticIsNecessary([Lcom/aviary/android/feather/widget/VibrationWidget;)V
    .locals 6
    .param p1, "views"    # [Lcom/aviary/android/feather/widget/VibrationWidget;

    .prologue
    .line 72
    const/4 v2, 0x1

    .line 74
    .local v2, "vibration":Z
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v4

    const-class v5, Lcom/aviary/android/feather/library/services/LocalDataService;

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/LocalDataService;

    .line 76
    .local v0, "dataService":Lcom/aviary/android/feather/library/services/LocalDataService;
    const-string/jumbo v4, "tools-vibration-disabled"

    invoke-virtual {v0, v4}, Lcom/aviary/android/feather/library/services/LocalDataService;->getIntentContainsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    const/4 v2, 0x0

    .line 87
    :cond_0
    :goto_0
    array-length v5, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, p1, v4

    .line 88
    .local v3, "view":Lcom/aviary/android/feather/widget/VibrationWidget;
    invoke-interface {v3, v2}, Lcom/aviary/android/feather/widget/VibrationWidget;->setVibrationEnabled(Z)V

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    .end local v3    # "view":Lcom/aviary/android/feather/widget/VibrationWidget;
    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v4

    const-class v5, Lcom/aviary/android/feather/library/services/PreferenceService;

    invoke-interface {v4, v5}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/library/services/PreferenceService;

    .line 80
    .local v1, "pref_service":Lcom/aviary/android/feather/library/services/PreferenceService;
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/PreferenceService;->isStandalone()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    const-string/jumbo v4, "feather_app_vibration"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/aviary/android/feather/library/services/PreferenceService;->getStandaloneBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    .line 90
    .end local v1    # "pref_service":Lcom/aviary/android/feather/library/services/PreferenceService;
    :cond_2
    return-void
.end method

.method protected abstract generateOptionView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
.end method

.method public bridge synthetic getOptionView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->getOptionView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final getOptionView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->mOptionView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getOptionView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->generateOptionView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->mOptionView:Landroid/view/ViewGroup;

    .line 31
    iget-object v0, p0, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->mOptionView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onDispose()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->mOptionView:Landroid/view/ViewGroup;

    .line 46
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractPanel;->onDispose()V

    .line 47
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 52
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/AbstractPanel;->setEnabled(Z)V

    .line 53
    return-void
.end method
