.class public Lnet/londatiga/android/BrushsQuickAction;
.super Lnet/londatiga/android/PopupWindows;
.source "BrushsQuickAction.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/londatiga/android/BrushsQuickAction$OnDismissListener;,
        Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;
    }
.end annotation


# instance fields
.field private final actionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/londatiga/android/ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private final itemLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mChildPos:I

.field private mDidAction:Z

.field private mDismissListener:Lnet/londatiga/android/BrushsQuickAction$OnDismissListener;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mInsertPos:I

.field private mItemClickListener:Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;

.field private mRootView:Landroid/widget/LinearLayout;

.field private rootWidth:I

.field private final secret:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "secret"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0, p1, v3, v4}, Lnet/londatiga/android/PopupWindows;-><init>(Landroid/content/Context;ZZ)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/londatiga/android/BrushsQuickAction;->actionItems:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/londatiga/android/BrushsQuickAction;->itemLayouts:Ljava/util/List;

    .line 61
    iput v3, p0, Lnet/londatiga/android/BrushsQuickAction;->rootWidth:I

    .line 67
    iput-boolean p2, p0, Lnet/londatiga/android/BrushsQuickAction;->secret:Z

    .line 68
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnet/londatiga/android/BrushsQuickAction;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    iput v3, p0, Lnet/londatiga/android/BrushsQuickAction;->mChildPos:I

    .line 70
    const v0, 0x7f030122

    invoke-virtual {p0, v0}, Lnet/londatiga/android/BrushsQuickAction;->setRootViewId(I)V

    .line 72
    if-eqz p2, :cond_0

    .line 73
    new-instance v0, Lnet/londatiga/android/ActionItem;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204b9

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lnet/londatiga/android/ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-virtual {p0, v0}, Lnet/londatiga/android/BrushsQuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 75
    new-instance v0, Lnet/londatiga/android/ActionItem;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204bb

    .line 76
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lnet/londatiga/android/ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {p0, v0}, Lnet/londatiga/android/BrushsQuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 77
    new-instance v0, Lnet/londatiga/android/ActionItem;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204bd

    .line 78
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lnet/londatiga/android/ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {p0, v0}, Lnet/londatiga/android/BrushsQuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 79
    new-instance v0, Lnet/londatiga/android/ActionItem;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204bf

    .line 80
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lnet/londatiga/android/ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {p0, v0}, Lnet/londatiga/android/BrushsQuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 91
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Lnet/londatiga/android/ActionItem;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204b8

    .line 83
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lnet/londatiga/android/ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {p0, v0}, Lnet/londatiga/android/BrushsQuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 84
    new-instance v0, Lnet/londatiga/android/ActionItem;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204ba

    .line 85
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lnet/londatiga/android/ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-virtual {p0, v0}, Lnet/londatiga/android/BrushsQuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 86
    new-instance v0, Lnet/londatiga/android/ActionItem;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204bc

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lnet/londatiga/android/ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {p0, v0}, Lnet/londatiga/android/BrushsQuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 88
    new-instance v0, Lnet/londatiga/android/ActionItem;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204be

    .line 89
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lnet/londatiga/android/ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-virtual {p0, v0}, Lnet/londatiga/android/BrushsQuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lnet/londatiga/android/BrushsQuickAction;)Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;
    .locals 1
    .param p0, "x0"    # Lnet/londatiga/android/BrushsQuickAction;

    .prologue
    .line 28
    iget-object v0, p0, Lnet/londatiga/android/BrushsQuickAction;->mItemClickListener:Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;

    return-object v0
.end method

.method static synthetic access$102(Lnet/londatiga/android/BrushsQuickAction;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/londatiga/android/BrushsQuickAction;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lnet/londatiga/android/BrushsQuickAction;->mDidAction:Z

    return p1
.end method

.method static synthetic access$200(Lnet/londatiga/android/BrushsQuickAction;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/londatiga/android/BrushsQuickAction;

    .prologue
    .line 28
    iget-object v0, p0, Lnet/londatiga/android/BrushsQuickAction;->itemLayouts:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addActionItem(Lnet/londatiga/android/ActionItem;)V
    .locals 9
    .param p1, "action"    # Lnet/londatiga/android/ActionItem;

    .prologue
    const/4 v8, 0x1

    .line 94
    iget-object v5, p0, Lnet/londatiga/android/BrushsQuickAction;->actionItems:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p1}, Lnet/londatiga/android/ActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 98
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lnet/londatiga/android/BrushsQuickAction;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030017

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 100
    .local v3, "layout":Landroid/widget/LinearLayout;
    iget-boolean v5, p0, Lnet/londatiga/android/BrushsQuickAction;->secret:Z

    if-eqz v5, :cond_0

    .line 101
    const v5, 0x7f020186

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 104
    :cond_0
    const v5, 0x7f080053

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 105
    .local v2, "itemImageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :goto_0
    iget-object v5, p0, Lnet/londatiga/android/BrushsQuickAction;->itemLayouts:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v5, p0, Lnet/londatiga/android/BrushsQuickAction;->itemLayouts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 114
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 117
    :cond_1
    iget v4, p0, Lnet/londatiga/android/BrushsQuickAction;->mChildPos:I

    .line 118
    .local v4, "pos":I
    invoke-virtual {p1}, Lnet/londatiga/android/ActionItem;->getActionId()I

    move-result v0

    .line 120
    .local v0, "actionId":I
    new-instance v5, Lnet/londatiga/android/BrushsQuickAction$1;

    invoke-direct {v5, p0, v4, v0}, Lnet/londatiga/android/BrushsQuickAction$1;-><init>(Lnet/londatiga/android/BrushsQuickAction;II)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v5, p0, Lnet/londatiga/android/BrushsQuickAction;->mRootView:Landroid/widget/LinearLayout;

    iget v6, p0, Lnet/londatiga/android/BrushsQuickAction;->mInsertPos:I

    invoke-virtual {v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 144
    iget v5, p0, Lnet/londatiga/android/BrushsQuickAction;->mChildPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lnet/londatiga/android/BrushsQuickAction;->mChildPos:I

    .line 145
    iget v5, p0, Lnet/londatiga/android/BrushsQuickAction;->mInsertPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lnet/londatiga/android/BrushsQuickAction;->mInsertPos:I

    .line 146
    return-void

    .line 108
    .end local v0    # "actionId":I
    .end local v4    # "pos":I
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getActionItem(I)Lnet/londatiga/android/ActionItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lnet/londatiga/android/BrushsQuickAction;->actionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/londatiga/android/ActionItem;

    return-object v0
.end method

.method public getSelectedActionIndex()I
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/londatiga/android/BrushsQuickAction;->itemLayouts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 162
    iget-object v1, p0, Lnet/londatiga/android/BrushsQuickAction;->itemLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 161
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public isSecret()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lnet/londatiga/android/BrushsQuickAction;->secret:Z

    return v0
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lnet/londatiga/android/BrushsQuickAction;->mDidAction:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/londatiga/android/BrushsQuickAction;->mDismissListener:Lnet/londatiga/android/BrushsQuickAction$OnDismissListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lnet/londatiga/android/BrushsQuickAction;->mDismissListener:Lnet/londatiga/android/BrushsQuickAction$OnDismissListener;

    invoke-interface {v0}, Lnet/londatiga/android/BrushsQuickAction$OnDismissListener;->onDismiss()V

    .line 178
    :cond_0
    return-void
.end method

.method public setOnActionItemClickListener(Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;

    .prologue
    .line 187
    iput-object p1, p0, Lnet/londatiga/android/BrushsQuickAction;->mItemClickListener:Lnet/londatiga/android/BrushsQuickAction$OnActionItemClickListener;

    .line 188
    return-void
.end method

.method public setOnDismissListener(Lnet/londatiga/android/BrushsQuickAction$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/londatiga/android/BrushsQuickAction$OnDismissListener;

    .prologue
    .line 195
    invoke-virtual {p0, p0}, Lnet/londatiga/android/BrushsQuickAction;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 197
    iput-object p1, p0, Lnet/londatiga/android/BrushsQuickAction;->mDismissListener:Lnet/londatiga/android/BrushsQuickAction$OnDismissListener;

    .line 198
    return-void
.end method

.method public setRootViewId(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, -0x2

    .line 207
    iget-object v0, p0, Lnet/londatiga/android/BrushsQuickAction;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/londatiga/android/BrushsQuickAction;->mRootView:Landroid/widget/LinearLayout;

    .line 213
    iget-object v0, p0, Lnet/londatiga/android/BrushsQuickAction;->mRootView:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v0, p0, Lnet/londatiga/android/BrushsQuickAction;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lnet/londatiga/android/BrushsQuickAction;->setContentView(Landroid/view/View;)V

    .line 216
    return-void
.end method

.method public setSelectedAction(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 219
    if-ltz p1, :cond_0

    iget-object v1, p0, Lnet/londatiga/android/BrushsQuickAction;->itemLayouts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lnet/londatiga/android/BrushsQuickAction;->itemLayouts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 223
    iget-object v1, p0, Lnet/londatiga/android/BrushsQuickAction;->itemLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    :cond_2
    iget-object v1, p0, Lnet/londatiga/android/BrushsQuickAction;->itemLayouts:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_0
.end method

.method public show(Landroid/view/View;)V
    .locals 12
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v11, -0x2

    const/4 v10, 0x0

    .line 233
    invoke-virtual {p0, p1}, Lnet/londatiga/android/BrushsQuickAction;->preShow(Landroid/view/View;)V

    .line 237
    iput-boolean v10, p0, Lnet/londatiga/android/BrushsQuickAction;->mDidAction:Z

    .line 239
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 241
    .local v1, "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 243
    new-instance v0, Landroid/graphics/Rect;

    aget v5, v1, v10

    aget v6, v1, v9

    aget v7, v1, v10

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v1, v9

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 251
    .local v0, "anchorRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lnet/londatiga/android/BrushsQuickAction;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11, v11}, Landroid/widget/LinearLayout;->measure(II)V

    .line 253
    iget-object v5, p0, Lnet/londatiga/android/BrushsQuickAction;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    .line 254
    .local v2, "rootHeight":I
    iget v5, p0, Lnet/londatiga/android/BrushsQuickAction;->rootWidth:I

    if-nez v5, :cond_0

    .line 255
    iget-object v5, p0, Lnet/londatiga/android/BrushsQuickAction;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    iput v5, p0, Lnet/londatiga/android/BrushsQuickAction;->rootWidth:I

    .line 258
    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 259
    .local v3, "xPos":I
    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v4, v5, v2

    .line 261
    .local v4, "yPos":I
    iget-object v5, p0, Lnet/londatiga/android/BrushsQuickAction;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, p1, v10, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 262
    return-void
.end method
