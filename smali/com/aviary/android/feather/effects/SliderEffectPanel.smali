.class public abstract Lcom/aviary/android/feather/effects/SliderEffectPanel;
.super Lcom/aviary/android/feather/effects/AbstractOptionPanel;
.source "SliderEffectPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;
    }
.end annotation


# instance fields
.field mButtonMinus:Landroid/view/View;

.field mButtonPlus:Landroid/view/View;

.field mResourceName:Ljava/lang/String;

.field mSeekBar:Lcom/aviary/android/feather/widget/AviarySeekBar;

.field private mStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

.field mWheel:Lcom/aviary/android/feather/widget/AviaryWheel;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;
    .param p3, "type"    # Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;
    .param p4, "resourcesBaseName"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 38
    sget-object v0, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;->WheelStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    .line 40
    invoke-static {p3}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->get(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)Lcom/aviary/android/feather/headless/filters/IFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mFilter:Lcom/aviary/android/feather/headless/filters/IFilter;

    .line 41
    iput-object p4, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mResourceName:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public final OnValueChanged(Lcom/aviary/android/feather/widget/AviaryWheel;I)V
    .locals 1
    .param p1, "view"    # Lcom/aviary/android/feather/widget/AviaryWheel;
    .param p2, "value"    # I

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->onSliderChanged(IZ)V

    .line 147
    return-void
.end method

.method protected decreaseValue()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    sget-object v1, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;->SeekBarStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mSeekBar:Lcom/aviary/android/feather/widget/AviarySeekBar;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mSeekBar:Lcom/aviary/android/feather/widget/AviarySeekBar;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviarySeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviarySeekBar;->setProgress(I)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mWheel:Lcom/aviary/android/feather/widget/AviaryWheel;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mWheel:Lcom/aviary/android/feather/widget/AviaryWheel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryWheel;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryWheel;->setValue(I)V

    goto :goto_0
.end method

.method protected generateOptionView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    sget-object v1, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;->SeekBarStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    if-ne v0, v1, :cond_0

    .line 116
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_panel_seekbar:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 118
    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_panel_wheel:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method protected increaseValue()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    sget-object v1, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;->SeekBarStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mSeekBar:Lcom/aviary/android/feather/widget/AviarySeekBar;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mSeekBar:Lcom/aviary/android/feather/widget/AviarySeekBar;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviarySeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviarySeekBar;->setProgress(I)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mWheel:Lcom/aviary/android/feather/widget/AviaryWheel;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mWheel:Lcom/aviary/android/feather/widget/AviaryWheel;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryWheel;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryWheel;->setValue(I)V

    goto :goto_0
.end method

.method public onActivate()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->onActivate()V

    .line 66
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    sget-object v1, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;->SeekBarStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mSeekBar:Lcom/aviary/android/feather/widget/AviarySeekBar;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviarySeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mWheel:Lcom/aviary/android/feather/widget/AviaryWheel;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->setOnWheelChangeListener(Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;)V

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/aviary/android/feather/widget/VibrationWidget;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mWheel:Lcom/aviary/android/feather/widget/AviaryWheel;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->disableHapticIsNecessary([Lcom/aviary/android/feather/widget/VibrationWidget;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 90
    .local v0, "id":I
    iget-object v1, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mButtonMinus:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->decreaseValue()V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mButtonPlus:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->increaseValue()V

    goto :goto_0
.end method

.method public onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x32

    .line 46
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_button_minus:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mButtonMinus:Landroid/view/View;

    .line 49
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_button_plus:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mButtonPlus:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    sget-object v1, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;->SeekBarStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/AviarySeekBar;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mSeekBar:Lcom/aviary/android/feather/widget/AviarySeekBar;

    .line 53
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mSeekBar:Lcom/aviary/android/feather/widget/AviarySeekBar;

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/widget/AviarySeekBar;->setProgress(I)V

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/aviary/android/feather/R$id;->aviary_wheel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/AviaryWheel;

    iput-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mWheel:Lcom/aviary/android/feather/widget/AviaryWheel;

    .line 56
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mWheel:Lcom/aviary/android/feather/widget/AviaryWheel;

    invoke-virtual {v0, v2}, Lcom/aviary/android/feather/widget/AviaryWheel;->setValue(I)V

    goto :goto_0
.end method

.method public onDeactivate()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->onDeactivate()V

    .line 80
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    sget-object v1, Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;->SeekBarStyle:Lcom/aviary/android/feather/effects/SliderEffectPanel$SliderStyle;

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mSeekBar:Lcom/aviary/android/feather/widget/AviarySeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviarySeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/effects/SliderEffectPanel;->mWheel:Lcom/aviary/android/feather/widget/AviaryWheel;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryWheel;->setOnWheelChangeListener(Lcom/aviary/android/feather/widget/AviaryWheel$OnWheelChangeListener;)V

    goto :goto_0
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 124
    invoke-virtual {p0, p2, p3}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->onSliderChanged(IZ)V

    .line 125
    return-void
.end method

.method protected abstract onSliderChanged(IZ)V
.end method

.method protected abstract onSliderEnd(I)V
.end method

.method protected abstract onSliderStart(I)V
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->getName()Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": SliderMoved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 130
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->onSliderStart(I)V

    .line 131
    return-void
.end method

.method public final onStartTrackingTouch(Lcom/aviary/android/feather/widget/AviaryWheel;)V
    .locals 3
    .param p1, "view"    # Lcom/aviary/android/feather/widget/AviaryWheel;

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->getName()Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": WheelMoved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aviary/android/feather/library/tracking/Tracker;->recordTag(Ljava/lang/String;)Z

    .line 141
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/AviaryWheel;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->onSliderStart(I)V

    .line 142
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->onSliderEnd(I)V

    .line 136
    return-void
.end method

.method public onStopTrackingTouch(Lcom/aviary/android/feather/widget/AviaryWheel;)V
    .locals 1
    .param p1, "view"    # Lcom/aviary/android/feather/widget/AviaryWheel;

    .prologue
    .line 151
    invoke-virtual {p1}, Lcom/aviary/android/feather/widget/AviaryWheel;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/effects/SliderEffectPanel;->onSliderEnd(I)V

    .line 152
    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/AbstractOptionPanel;->setEnabled(Z)V

    return-void
.end method
