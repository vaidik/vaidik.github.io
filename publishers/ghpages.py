"""
Hyde publisher plugin for publishing to Github Pages.
"""

import os
import shutil
import subprocess

from hyde.publisher import Publisher


class GhPages(Publisher):
	def initialize(self, settings):
		pass

	def publish(self):
		super(GhPages, self).publish()

		root = self.site.config.deploy_root_path
		subprocess.call(['./publishers/ghpages.sh'])