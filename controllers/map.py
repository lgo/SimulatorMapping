import logging
from time import gmtime, strftime

from pylons import app_globals as g
from pylons import request, response, session, tmpl_context as c, url
from pylons.controllers.util import abort, redirect

from mapping.lib.base import BaseController, render

log = logging.getLogger(__name__)

class MapController(BaseController):
  def __init__(self):
    pass

  def tiles(self, z, x, y):
    return g.mapgen.getTile(z,x,y)