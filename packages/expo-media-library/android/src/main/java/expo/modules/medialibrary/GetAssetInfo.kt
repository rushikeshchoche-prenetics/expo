package expo.modules.medialibrary

import android.content.Context
import android.os.AsyncTask
import android.provider.MediaStore
import expo.modules.core.Promise
import expo.modules.medialibrary.MediaLibraryUtils

internal class GetAssetInfo(
  private val context: Context,
  private val assetId: String,
  private val promise: Promise
) : AsyncTask<Void?, Void?, Void?>() {
  public override fun doInBackground(vararg params: Void?): Void? {
    val selection = "${MediaStore.Images.Media._ID}=?"
    val selectionArgs = arrayOf(assetId)

    MediaLibraryUtils.queryAssetInfo(context, selection, selectionArgs, true, promise)
    return null
  }
}
