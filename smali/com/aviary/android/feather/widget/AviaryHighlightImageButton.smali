.class public Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;
.super Landroid/widget/ImageView;
.source "AviaryHighlightImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$SavedState;,
        Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBlendMode:Landroid/graphics/PorterDuff$Mode;

.field private mBroadcasting:Z

.field private mChecked:Z

.field private mColorFilterTintChecked:Landroid/graphics/ColorFilter;

.field private mColorFilterTintPressed:Landroid/graphics/ColorFilter;

.field private mColorFilterTintSelected:Landroid/graphics/ColorFilter;

.field private mGlowSize:I

.field private mGlowStatus:I

.field private mHighlightColorChecked:I

.field private mHighlightColorPressed:I

.field private mHighlightColorSelected:I

.field private mHighlightMode:I

.field private mOnCheckedChangeListener:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;

.field private mToggleEnabled:Z

.field private mUnToggleUserEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    sget v0, Lcom/aviary/android/feather/R$attr;->aviaryHighlightImageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorPressed:I

    .line 32
    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorChecked:I

    .line 33
    iput v4, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorSelected:I

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    .line 118
    .local v11, "theme":Landroid/content/res/Resources$Theme;
    sget-object v1, Lcom/aviary/android/feather/R$styleable;->AviaryHighlightImageButton:[I

    invoke-virtual {v11, p2, v1, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 119
    .local v7, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorPressed:I

    .line 120
    invoke-virtual {v7, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorChecked:I

    .line 121
    const/4 v1, 0x5

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorSelected:I

    .line 122
    const/4 v1, 0x6

    invoke-virtual {v7, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mToggleEnabled:Z

    .line 123
    const/16 v1, 0x9

    invoke-virtual {v7, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mUnToggleUserEnabled:Z

    .line 124
    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "mode":Ljava/lang/String;
    invoke-virtual {v7, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mGlowStatus:I

    .line 127
    const/4 v1, 0x7

    const/4 v2, 0x7

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mGlowSize:I

    .line 128
    invoke-virtual {v7, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightMode:I

    .line 130
    const/16 v1, 0x8

    invoke-virtual {v7, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 131
    .local v8, "checked":Z
    iget-boolean v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mToggleEnabled:Z

    if-nez v1, :cond_0

    const/4 v8, 0x0

    .line 133
    :cond_0
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mGlowStatus:I

    invoke-static {v1, v3}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    new-instance v1, Landroid/graphics/LightingColorFilter;

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorPressed:I

    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorPressed:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mColorFilterTintPressed:Landroid/graphics/ColorFilter;

    .line 137
    :cond_1
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mGlowStatus:I

    invoke-static {v1, v6}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    new-instance v1, Landroid/graphics/LightingColorFilter;

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorChecked:I

    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorChecked:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mColorFilterTintChecked:Landroid/graphics/ColorFilter;

    .line 141
    :cond_2
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mGlowStatus:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    new-instance v1, Landroid/graphics/LightingColorFilter;

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorSelected:I

    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorSelected:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mColorFilterTintSelected:Landroid/graphics/ColorFilter;

    .line 145
    :cond_3
    if-eqz v10, :cond_5

    .line 146
    invoke-static {v10}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mBlendMode:Landroid/graphics/PorterDuff$Mode;

    .line 151
    :goto_0
    invoke-virtual {p0, v8, v4}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setChecked(ZZ)V

    .line 152
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setFocusable(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 157
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v9, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;

    if-eqz v1, :cond_4

    .line 158
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;

    .line 159
    .local v0, "glow":Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;
    iget v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorPressed:I

    iget v2, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorChecked:I

    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorSelected:I

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mGlowSize:I

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightMode:I

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mGlowStatus:I

    invoke-virtual/range {v0 .. v6}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->updateConfig(IIIIII)V

    .line 167
    .end local v0    # "glow":Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;
    :cond_4
    return-void

    .line 148
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mBlendMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 306
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v5, p1, 0x1

    invoke-super {p0, v5}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v2

    .line 308
    .local v2, "drawableState":[I
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mBlendMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v5, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->isPressed()Z

    move-result v3

    .line 310
    .local v3, "pressed":Z
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->isChecked()Z

    move-result v0

    .line 311
    .local v0, "checked":Z
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->isSelected()Z

    move-result v4

    .line 313
    .local v4, "selected":Z
    invoke-virtual {p0, v1, v3, v0, v4}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->updateDrawable(Landroid/graphics/drawable/Drawable;ZZZ)V

    .line 315
    if-eqz v0, :cond_0

    .line 316
    sget-object v5, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->CHECKED_STATE_SET:[I

    invoke-static {v2, v5}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mergeDrawableStates([I[I)[I

    .line 319
    .end local v0    # "checked":Z
    .end local v3    # "pressed":Z
    .end local v4    # "selected":Z
    :cond_0
    return-object v2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 234
    const-class v0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 235
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 236
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 243
    const-class v0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mToggleEnabled:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 247
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 248
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 378
    move-object v0, p1

    check-cast v0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$SavedState;

    .line 379
    .local v0, "ss":Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$SavedState;
    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 380
    iget-boolean v1, v0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$SavedState;->checked:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setChecked(ZZ)V

    .line 381
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->requestLayout()V

    .line 382
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 370
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 371
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$SavedState;

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 372
    .local v0, "ss":Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$SavedState;
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$SavedState;->checked:Z

    .line 373
    return-object v0
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->toggle()V

    .line 365
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setChecked(ZZ)V

    .line 278
    return-void
.end method

.method protected setChecked(ZZ)V
    .locals 2
    .param p1, "checked"    # Z
    .param p2, "fromUser"    # Z

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mToggleEnabled:Z

    if-nez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 284
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mChecked:Z

    .line 285
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->refreshDrawableState()V

    .line 287
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mBroadcasting:Z

    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mBroadcasting:Z

    .line 292
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mOnCheckedChangeListener:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mOnCheckedChangeListener:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mChecked:Z

    invoke-interface {v0, p0, v1, p2}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;ZZ)V

    .line 295
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mBroadcasting:Z

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 198
    const-string/jumbo v0, "View"

    const-string/jumbo v1, "setImageBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 201
    .local v9, "current":Landroid/graphics/drawable/Drawable;
    instance-of v0, v9, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, v9

    .line 202
    check-cast v0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    check-cast v9, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;

    .end local v9    # "current":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v9}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    :goto_0
    return-void

    .line 207
    .restart local v9    # "current":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorPressed:I

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorChecked:I

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorSelected:I

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mGlowSize:I

    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightMode:I

    iget v8, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mGlowStatus:I

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 172
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 175
    .local v9, "current":Landroid/graphics/drawable/Drawable;
    instance-of v1, v9, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;

    if-eqz v1, :cond_1

    move-object v1, v9

    .line 176
    check-cast v1, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 177
    move-object p1, v9

    .line 193
    .end local v9    # "current":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    return-void

    .line 179
    .restart local v9    # "current":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v0, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget v3, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorPressed:I

    iget v4, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorChecked:I

    iget v5, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorSelected:I

    iget v6, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mGlowSize:I

    iget v7, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightMode:I

    iget v8, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mGlowStatus:I

    invoke-direct/range {v0 .. v8}, Lcom/aviary/android/feather/graphics/GlowBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IIIIII)V

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move-object p1, v0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 183
    .end local v9    # "current":Landroid/graphics/drawable/Drawable;
    :cond_2
    instance-of v1, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 216
    .local v2, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 217
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mOnCheckedChangeListener:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton$OnCheckedChangeListener;

    .line 301
    return-void
.end method

.method public setPressed(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 256
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mBlendMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->isChecked()Z

    move-result v1

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->isSelected()Z

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->updateDrawable(Landroid/graphics/drawable/Drawable;ZZZ)V

    .line 259
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 265
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 267
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mBlendMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->isPressed()Z

    move-result v1

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->updateDrawable(Landroid/graphics/drawable/Drawable;ZZZ)V

    .line 270
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 356
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mChecked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mUnToggleUserEnabled:Z

    if-nez v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mChecked:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setChecked(ZZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected updateDrawable(Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "pressed"    # Z
    .param p3, "checked"    # Z
    .param p4, "selected"    # Z

    .prologue
    .line 324
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->invalidate()V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_8

    .line 331
    :cond_2
    if-eqz p2, :cond_4

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightMode:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mColorFilterTintPressed:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mColorFilterTintPressed:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 335
    :cond_3
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorPressed:I

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mBlendMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 337
    :cond_4
    if-eqz p3, :cond_6

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightMode:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 338
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mColorFilterTintChecked:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_5

    .line 339
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mColorFilterTintChecked:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 341
    :cond_5
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorChecked:I

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mBlendMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 343
    :cond_6
    if-eqz p4, :cond_0

    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightMode:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/aviary/android/feather/utils/UIUtils;->checkBits(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mColorFilterTintSelected:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_7

    .line 345
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mColorFilterTintSelected:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 347
    :cond_7
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mHighlightColorChecked:I

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->mBlendMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 351
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method
