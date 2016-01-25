.class public Lcom/liquable/nemo/friend/model/ContactIcon;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "ContactIcon.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field public static final EMPTY:J


# instance fields
.field public final photoId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/friend/model/ContactIcon;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "photoId"    # Ljava/lang/Long;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/ContactIcon;->photoId:Ljava/lang/Long;

    .line 27
    return-void
.end method


# virtual methods
.method public imageMissingResourceId()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f0202a8

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    if-ne p0, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 43
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 45
    check-cast v0, Lcom/liquable/nemo/friend/model/ContactIcon;

    .line 46
    .local v0, "other":Lcom/liquable/nemo/friend/model/ContactIcon;
    iget-object v3, p0, Lcom/liquable/nemo/friend/model/ContactIcon;->photoId:Ljava/lang/Long;

    if-nez v3, :cond_4

    .line 47
    iget-object v3, v0, Lcom/liquable/nemo/friend/model/ContactIcon;->photoId:Ljava/lang/Long;

    if-eqz v3, :cond_0

    move v1, v2

    .line 48
    goto :goto_0

    .line 50
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/friend/model/ContactIcon;->photoId:Ljava/lang/Long;

    iget-object v4, v0, Lcom/liquable/nemo/friend/model/ContactIcon;->photoId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 51
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 58
    const/16 v0, 0x1f

    .line 59
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 60
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/ContactIcon;->photoId:Ljava/lang/Long;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 61
    return v1

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/ContactIcon;->photoId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 66
    const/4 v7, 0x0

    .line 68
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/liquable/nemo/friend/model/ContactIcon;->COLUMNS:[Ljava/lang/String;

    const-string/jumbo v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v10, p0, Lcom/liquable/nemo/friend/model/ContactIcon;->photoId:Ljava/lang/Long;

    .line 71
    invoke-virtual {v10}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    .line 68
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 74
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const-string/jumbo v0, "data15"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 76
    .local v6, "bytes":[B
    if-eqz v6, :cond_1

    .line 78
    const/4 v0, 0x0

    :try_start_1
    array-length v1, v6

    const/4 v2, 0x0

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 88
    if-eqz v7, :cond_0

    .line 89
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 92
    .end local v6    # "bytes":[B
    :cond_0
    :goto_0
    return-object v0

    .line 79
    .restart local v6    # "bytes":[B
    :catch_0
    move-exception v0

    .line 88
    .end local v6    # "bytes":[B
    :cond_1
    if-eqz v7, :cond_2

    .line 89
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v9

    .line 92
    goto :goto_0

    .line 84
    :catch_1
    move-exception v8

    .line 86
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    if-eqz v7, :cond_2

    .line 89
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 88
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 89
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 98
    return-void
.end method
