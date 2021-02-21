import React from 'react';
import { slide as Menu } from 'react-burger-menu';

export default props => {
  return (
    <Menu>
      <a className="menu-item" href="/">
        Home
      </a>
      <a className="menu-item" href="/park1">
        Arcadia
      </a>
      <a className="menu-item" href="/park2">
        Grand Canyon
      </a>
      <a className="menu-item" href="/park3">
        Yosemite
      </a>
    </Menu>
  );
};

