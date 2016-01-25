.class public Lnet/londatiga/android/ActionItem;
.super Ljava/lang/Object;
.source "ActionItem.java"


# instance fields
.field private actionId:I

.field private icon:Landroid/graphics/drawable/Drawable;

.field private selected:Z

.field private sticky:Z

.field private thumb:Landroid/graphics/Bitmap;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const/4 v0, -0x1

    invoke-direct {p0, v0, v1, v1}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 27
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "actionId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "actionId"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "actionId"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lnet/londatiga/android/ActionItem;->actionId:I

    .line 74
    iput-object p2, p0, Lnet/londatiga/android/ActionItem;->title:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lnet/londatiga/android/ActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 76
    iput p1, p0, Lnet/londatiga/android/ActionItem;->actionId:I

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 36
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getActionId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lnet/londatiga/android/ActionItem;->actionId:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lnet/londatiga/android/ActionItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumb()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lnet/londatiga/android/ActionItem;->thumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lnet/londatiga/android/ActionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lnet/londatiga/android/ActionItem;->selected:Z

    return v0
.end method

.method public isSticky()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lnet/londatiga/android/ActionItem;->sticky:Z

    return v0
.end method

.method public setActionId(I)V
    .locals 0
    .param p1, "actionId"    # I

    .prologue
    .line 136
    iput p1, p0, Lnet/londatiga/android/ActionItem;->actionId:I

    .line 137
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 146
    iput-object p1, p0, Lnet/londatiga/android/ActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 147
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lnet/londatiga/android/ActionItem;->selected:Z

    .line 157
    return-void
.end method

.method public setSticky(Z)V
    .locals 0
    .param p1, "sticky"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lnet/londatiga/android/ActionItem;->sticky:Z

    .line 167
    return-void
.end method

.method public setThumb(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 176
    iput-object p1, p0, Lnet/londatiga/android/ActionItem;->thumb:Landroid/graphics/Bitmap;

    .line 177
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lnet/londatiga/android/ActionItem;->title:Ljava/lang/String;

    .line 187
    return-void
.end method
